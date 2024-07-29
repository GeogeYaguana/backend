import { PartialType } from '@nestjs/mapped-types';
import { CreatePlaceOpeningTimeDto } from './create-place_opening_time.dto';

export class UpdatePlaceOpeningTimeDto extends PartialType(CreatePlaceOpeningTimeDto) {}
