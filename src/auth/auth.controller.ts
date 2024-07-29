import {
  Body,
  Controller,
  HttpCode,
  HttpStatus,
  Param,
  Post,
} from '@nestjs/common';
import { AuthService } from './auth.service';
import { SignInDto } from './dto/signIn.dto';
import { SignUpDto } from './dto/signUp.dto';
import { GoogleSignInDto } from './dto/googleSignIn.dto';
import { UpdateUserPasswordDto } from './dto/update-user-password.dto';

@Controller('auth')
export class AuthController {
  constructor(private authService: AuthService) {}

  @HttpCode(HttpStatus.OK)
  @Post('login')
  signIn(@Body() signInDto: SignInDto) {
    return this.authService.signIn(signInDto.username, signInDto.password);
  }

  @HttpCode(HttpStatus.OK)
  @Post('register')
  signUp(@Body() signUpDto: SignUpDto) {
    return this.authService.signUp(
      signUpDto.firstName,
      signUpDto.lastName,
      signUpDto.username,
      signUpDto.email,
      signUpDto.password,
    );
  }

  @HttpCode(HttpStatus.OK)
  @Post('google-sign-in')
  googleSignIn(@Body() googleSignInDto: GoogleSignInDto) {
    return this.authService.googleSignIn(googleSignInDto.idToken);
  }

  @HttpCode(HttpStatus.OK)
  @Post('change-password')
  updatePassword(@Body() updateUserPasswordDto: UpdateUserPasswordDto) {
    return this.authService.updatePassword(updateUserPasswordDto);
  }
}
