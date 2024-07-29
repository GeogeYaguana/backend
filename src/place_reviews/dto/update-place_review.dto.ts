import { PartialType } from '@nestjs/mapped-types';
import { CreatePlaceReviewDto } from './create-place_review.dto';

export class UpdatePlaceReviewDto extends PartialType(CreatePlaceReviewDto) {}
