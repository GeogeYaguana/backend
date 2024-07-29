import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty } from 'class-validator';

export class GoogleSignInDto {
  @ApiProperty()
  @IsNotEmpty()
  idToken: string;
}
