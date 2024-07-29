import {
  HttpException,
  HttpStatus,
  Injectable,
  UnauthorizedException,
} from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';
import { User } from 'src/users/entities/user.entity';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import * as bcrypt from 'bcrypt';
import { randomBytes } from 'crypto';
import { UpdateUserPasswordDto } from './dto/update-user-password.dto';

@Injectable()
export class AuthService {
  constructor(
    private jwtService: JwtService,
    @InjectRepository(User)
    private readonly userRepository: Repository<User>,
  ) {}

  async hashPassword(password: string): Promise<string> {
    const saltRounds = 10;
    const hashedPassword = await bcrypt.hash(password, saltRounds);
    return hashedPassword;
  }

  async comparePasswords(
    plainTextPassword: string,
    hashedPassword: string,
  ): Promise<boolean> {
    return bcrypt.compare(plainTextPassword, hashedPassword);
  }

  async signIn(username: string, pass: string) {
    const user = await this.userRepository.findOneBy({ username });

    if (user === null) {
      throw new HttpException(
        {
          status: HttpStatus.BAD_REQUEST,
          error: 'Bad Request',
          message: 'El usuario no existe.',
        },
        HttpStatus.BAD_REQUEST,
      );
    }

    const passwordsMatch = await this.comparePasswords(pass, user.password);

    if (!passwordsMatch) {
      throw new UnauthorizedException();
    }

    const { password, ...userInfo } = user;

    const payload = { user: userInfo };

    return {
      access_token: await this.jwtService.signAsync(payload),
    };
  }

  async signUp(
    firstName: string,
    lastName: string,
    username: string,
    email: string,
    pass: string,
  ) {
    const hashedPassword = await this.hashPassword(pass);

    const createdUser = await this.userRepository.save({
      firstName,
      lastName,
      username,
      email,
      password: hashedPassword,
      points: 0,
    });

    const { password, ...userInfo } = createdUser;

    return userInfo;
  }

  async googleSignIn(idToken: string) {
    // Google user info
    const googleUser = await this.jwtService.decode(idToken);

    const existingUser = await this.userRepository.findOne({
      where: { email: googleUser.email },
    });

    if (existingUser) {
      const { password, ...userInfo } = existingUser;

      const payload = { user: userInfo };

      return {
        access_token: await this.jwtService.signAsync(payload),
      };
    }

    const randomPassword = this.generateRandomPassword();

    const newUser = await this.signUp(
      googleUser.given_name,
      googleUser.family_name,
      googleUser.email,
      googleUser.email,
      randomPassword,
    );

    const payload = { user: newUser };

    return {
      access_token: await this.jwtService.signAsync(payload),
    };
  }

  private generateRandomPassword(): string {
    // Generate a random password using crypto library
    const length = 12; // You can adjust the length of the password
    const randomBytesBuffer = randomBytes(length);
    return randomBytesBuffer.toString('base64').slice(0, length);
  }

  async updatePassword(updateUserPasswordDto: UpdateUserPasswordDto) {
    const { userId, currentPassword, newPassword } = updateUserPasswordDto;

    const user = await this.userRepository.findOneBy({ id: userId });

    if (user === null) {
      throw new HttpException(
        {
          status: HttpStatus.BAD_REQUEST,
          error: 'Bad Request',
          message: 'El usuario no existe.',
        },
        HttpStatus.BAD_REQUEST,
      );
    }

    const passwordsMatch = await this.comparePasswords(
      currentPassword,
      user.password,
    );

    if (!passwordsMatch) {
      throw new HttpException(
        {
          status: HttpStatus.UNAUTHORIZED,
          error: 'Unauthorized',
          message: 'Contraseña incorrecta',
        },
        HttpStatus.UNAUTHORIZED,
      );
    }

    const hashedPassword = await this.hashPassword(newPassword);

    await this.userRepository.update(
      { id: userId },
      { password: hashedPassword },
    );

    return { message: 'Contraseña actualizada' };
  }
}
