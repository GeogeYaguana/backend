import { PartialType } from '@nestjs/mapped-types';
import { CreatePlacePhotoDto } from './create-place_photo.dto';

export class UpdatePlacePhotoDto extends PartialType(CreatePlacePhotoDto) {}
