import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty, IsUUID } from 'class-validator';

export class UpdateUserPasswordDto {
  @ApiProperty()
  @IsNotEmpty()
  @IsUUID()
  userId: string;

  @ApiProperty()
  @IsNotEmpty()
  currentPassword: string;

  @ApiProperty()
  @IsNotEmpty()
  newPassword: string;
}
