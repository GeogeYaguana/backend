import { PartialType } from '@nestjs/mapped-types';
import { CreateFavoriteEventDto } from './create-favorite_event.dto';

export class UpdateFavoriteEventDto extends PartialType(CreateFavoriteEventDto) {}
