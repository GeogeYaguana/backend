import { ApiProperty } from '@nestjs/swagger';
import { IsValidTimeRangeFormat } from 'src/validators/time-range.validator';

export class CreatePlaceOpeningTimeDto {
  @ApiProperty({ example: '10:00 - 17:30' })
  @IsValidTimeRangeFormat()
  monday: string;

  @ApiProperty({ example: '10:00 - 17:30' })
  @IsValidTimeRangeFormat()
  tuesday: string;

  @ApiProperty({ example: '10:00 - 17:30' })
  @IsValidTimeRangeFormat()
  wednesday: string;

  @ApiProperty({ example: '10:00 - 17:30' })
  @IsValidTimeRangeFormat()
  thursday: string;

  @ApiProperty({ example: '10:00 - 17:30' })
  @IsValidTimeRangeFormat()
  friday: string;

  @ApiProperty({ example: '10:00 - 17:30' })
  @IsValidTimeRangeFormat()
  saturday: string;

  @ApiProperty({ example: '10:00 - 17:30' })
  @IsValidTimeRangeFormat()
  sunday: string;
}
