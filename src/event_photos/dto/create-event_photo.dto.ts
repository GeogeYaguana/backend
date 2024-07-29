import { ApiProperty } from '@nestjs/swagger';
import { IsNumber, IsString } from 'class-validator';

export class CreateEventPhotoDto {
  @ApiProperty()
  @IsString()
  imageName: string;

  @ApiProperty()
  @IsNumber()
  eventId: number;
}
