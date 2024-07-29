import { PartialType } from '@nestjs/swagger';
import { CreateEventOpeningDateDto } from './create-event-opening-date.dto';

export class UpdateEventOpeningDateDto extends PartialType(CreateEventOpeningDateDto) {}
