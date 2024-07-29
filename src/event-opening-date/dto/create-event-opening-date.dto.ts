import { ApiProperty } from '@nestjs/swagger';
import { IsNumber } from 'class-validator';
import { IsValidTimeFormat } from 'src/validators/time-validator';

export class CreateEventOpeningDateDto {
  @ApiProperty()
  year: string;

  @ApiProperty()
  month: string;

  @ApiProperty()
  day: string;

  @IsValidTimeFormat()
  openingTime: string;

  @IsValidTimeFormat()
  closingTime: string;

  @ApiProperty()
  @IsNumber()
  eventId: number;
}
