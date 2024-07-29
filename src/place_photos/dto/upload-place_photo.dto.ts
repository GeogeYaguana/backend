import { ApiProperty } from '@nestjs/swagger';
import { IsNumberString } from 'class-validator';

export class UploadPlacePhotoDto {
  @ApiProperty()
  @IsNumberString()
  placeId: number;
}
