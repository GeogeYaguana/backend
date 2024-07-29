import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty, IsNumber, IsUUID } from 'class-validator';
import { isValidUserCuponCode } from 'src/validators/user-cupon-code-validator';

export class CreateUserCuponDto {
  @ApiProperty()
  @IsNotEmpty()
  @IsNumber()
  quantity: number;

  @ApiProperty()
  @IsNotEmpty()
  @isValidUserCuponCode()
  code: string;

  @ApiProperty()
  @IsNotEmpty()
  @IsUUID()
  userId: string;

  @ApiProperty()
  @IsNotEmpty()
  @IsNumber()
  cuponId: number;
}
