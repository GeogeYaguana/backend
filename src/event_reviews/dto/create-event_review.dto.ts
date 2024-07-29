import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty, IsNumber, IsString, IsUUID } from 'class-validator';

export class CreateEventReviewDto {
  @ApiProperty()
  @IsNotEmpty()
  @IsNumber()
  stars: number;

  @ApiProperty()
  @IsNotEmpty()
  @IsString()
  comment: string;

  @ApiProperty()
  @IsNotEmpty()
  @IsNumber()
  eventId: number;

  @ApiProperty()
  @IsNotEmpty()
  @IsUUID()
  userId: string;
}
