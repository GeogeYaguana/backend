import { ApiProperty } from '@nestjs/swagger';
import { IsNumberString } from 'class-validator';

export class UploadEventPhotoDto {
  @ApiProperty()
  @IsNumberString()
  eventId: number;
}
