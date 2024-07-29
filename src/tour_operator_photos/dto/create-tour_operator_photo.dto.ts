import { ApiProperty } from '@nestjs/swagger';
import { IsNumber, IsString } from 'class-validator';

export class CreateTourOperatorPhotoDto {
  @ApiProperty()
  @IsString()
  imageName: string;

  @ApiProperty()
  @IsNumber()
  tourOperatorId: number;
}
