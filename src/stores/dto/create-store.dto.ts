import { ApiProperty } from '@nestjs/swagger';
import { IsNumber, IsPhoneNumber } from 'class-validator';

export class CreateStoreDto {
  @ApiProperty()
  name: string;

  @ApiProperty()
  description: string;

  @ApiProperty({ example: '+593 990729257' })
  @IsPhoneNumber()
  phone: string;

  @ApiProperty()
  address: string;

  @ApiProperty()
  gpsCoordinates: string;

  @ApiProperty()
  @IsNumber()
  cantonId: number;
}
