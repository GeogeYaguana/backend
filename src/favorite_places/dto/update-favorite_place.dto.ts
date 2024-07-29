import { PartialType } from '@nestjs/mapped-types';
import { CreateFavoritePlaceDto } from './create-favorite_place.dto';

export class UpdateFavoritePlaceDto extends PartialType(CreateFavoritePlaceDto) {}
