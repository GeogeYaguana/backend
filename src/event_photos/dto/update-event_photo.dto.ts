import { PartialType } from '@nestjs/swagger';
import { CreateEventPhotoDto } from './create-event_photo.dto';

export class UpdateEventPhotoDto extends PartialType(CreateEventPhotoDto) {}
