import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty, IsNumber, IsUUID } from 'class-validator';
import { isValidUserCuponCode } from 'src/validators/user-cupon-code-validator';

export class BuyUserCuponDto {
  @ApiProperty()
  @IsNotEmpty()
  @IsUUID()
  userId: string;

  @ApiProperty()
  @IsNotEmpty()
  @IsNumber()
  cuponId: number;

  @ApiProperty()
  @IsNotEmpty()
  @isValidUserCuponCode()
  code: string;
}
