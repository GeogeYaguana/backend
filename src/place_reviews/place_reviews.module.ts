import { Module } from '@nestjs/common';
import { PlaceReviewsService } from './place_reviews.service';
import { PlaceReviewsController } from './place_reviews.controller';
import { PlaceReview } from './entities/place_review.entity';
import { TypeOrmModule } from '@nestjs/typeorm';

@Module({
  imports: [TypeOrmModule.forFeature([PlaceReview])],
  controllers: [PlaceReviewsController],
  providers: [PlaceReviewsService],
})
export class PlaceReviewsModule {}
