import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty, IsNumber, IsUUID } from 'class-validator';

export class CreateFavoritePlaceDto {
  @ApiProperty()
  @IsNotEmpty()
  @IsNumber()
  placeId: number;

  @ApiProperty()
  @IsNotEmpty()
  @IsUUID()
  userId: string;
}
