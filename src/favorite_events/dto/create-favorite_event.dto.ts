import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty, IsNumber, IsUUID } from 'class-validator';

export class CreateFavoriteEventDto {
  @ApiProperty()
  @IsNotEmpty()
  @IsNumber()
  eventId: number;

  @ApiProperty()
  @IsNotEmpty()
  @IsUUID()
  userId: string;
}
