import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { CreateUserCuponDto } from './dto/create-user_cupon.dto';
import { UpdateUserCuponDto } from './dto/update-user_cupon.dto';
import { UserCupon } from './entities/user_cupon.entity';
import { Repository } from 'typeorm';
import { InjectRepository } from '@nestjs/typeorm';
import { BuyUserCuponDto } from './dto/buy-user_cupon.dto';
import { User } from 'src/users/entities/user.entity';
import { Cupon } from 'src/cupons/entities/cupon.entity';

@Injectable()
export class UserCuponsService {
  constructor(
    @InjectRepository(UserCupon)
    private userCuponRepository: Repository<UserCupon>,
    @InjectRepository(User)
    private userRepository: Repository<User>,
    @InjectRepository(Cupon)
    private cuponRepository: Repository<Cupon>,
  ) {}

  create(createUserCuponDto: CreateUserCuponDto) {
    return this.userCuponRepository.save(createUserCuponDto);
  }

  findAll(queryParams: any) {
    const { userId } = queryParams;

    if (userId) {
      return this.userCuponRepository.find({
        where: { userId },
        relations: { cupon: { store: true } },
      });
    }

    return this.userCuponRepository.find();
  }

  findOne(id: string) {
    return this.userCuponRepository.findOneBy({ id });
  }

  update(id: string, updateUserCuponDto: UpdateUserCuponDto) {
    return this.userCuponRepository.update({ id }, updateUserCuponDto);
  }

  remove(id: string) {
    return this.userCuponRepository.delete(id);
  }

  async buyCupon(buyUserCuponDto: BuyUserCuponDto) {
    const cupon = await this.cuponRepository.findOne({
      where: {
        id: buyUserCuponDto.cuponId,
      },
    });

    if (cupon === null) {
      throw new HttpException(
        {
          status: HttpStatus.BAD_REQUEST,
          error: 'Bad Request',
          message: 'El cupon no existe.',
        },
        HttpStatus.BAD_REQUEST,
      );
    }

    const user = await this.userRepository.findOne({
      where: { id: buyUserCuponDto.userId },
    });

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

    if (user.points - cupon.pointsNeeded < 0) {
      throw new HttpException(
        {
          status: HttpStatus.BAD_REQUEST,
          error: 'Bad Request',
          message: 'El usuario no tiene suficientes puntos.',
        },
        HttpStatus.BAD_REQUEST,
      );
    }

    const userCupon = await this.userCuponRepository.findOne({
      where: {
        cuponId: buyUserCuponDto.cuponId,
        userId: buyUserCuponDto.userId,
      },
      relations: {
        cupon: true,
      },
    });

    if (userCupon === null) {
      const newUserCupon: CreateUserCuponDto = {
        quantity: 1,
        ...buyUserCuponDto,
      };

      const createdUserCupon = await this.create(newUserCupon);

      await this.userRepository.update(
        { id: user.id },
        { points: user.points - cupon.pointsNeeded },
      );

      return createdUserCupon;
    }

    await this.update(userCupon.id, {
      quantity: userCupon.quantity + 1,
    });

    await this.userRepository.update(
      { id: user.id },
      { points: user.points - cupon.pointsNeeded },
    );

    return userCupon;
  }
}
