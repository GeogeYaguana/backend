import { ApiProperty } from '@nestjs/swagger';
import { IsNumber, IsString } from 'class-validator';

export class CreatePlacePhotoDto {
  @ApiProperty()
  @IsString()
  imageName: string;

  @ApiProperty()
  @IsNumber()
  placeId: number;
}
