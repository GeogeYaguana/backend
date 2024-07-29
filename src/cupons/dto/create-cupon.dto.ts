import { ApiProperty } from '@nestjs/swagger';
import {
  IsISO8601,
  IsNotEmpty,
  IsNumber,
  IsString,
  IsUrl,
  Max,
  Min,
} from 'class-validator';

export class CreateCuponDto {
  @ApiProperty()
  @IsNotEmpty()
  name: string;

  @ApiProperty()
  @IsNotEmpty()
  description: string;

  @ApiProperty()
  @IsNotEmpty()
  code: string;

  @ApiProperty()
  @IsString()
  @IsISO8601()
  expirationDate: string;

  @ApiProperty()
  @IsNumber()
  @Min(0)
  pointsNeeded: number;

  @ApiProperty()
  @IsNumber()
  @Min(1)
  @Max(100)
  percentageDiscount: number;

  @ApiProperty()
  @IsNotEmpty()
  @IsUrl()
  thumbnail: string;

  @ApiProperty()
  @IsNumber()
  storeId: number;
}
