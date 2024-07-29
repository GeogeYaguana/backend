import { PartialType } from '@nestjs/swagger';
import { CreateTourOperatorPhotoDto } from './create-tour_operator_photo.dto';

export class UpdateTourOperatorPhotoDto extends PartialType(CreateTourOperatorPhotoDto) {}
