import { Module } from '@nestjs/common';
import { TourOperatorPhotosService } from './tour_operator_photos.service';
import { TourOperatorPhotosController } from './tour_operator_photos.controller';
import { TourOperatorPhoto } from './entities/tour_operator_photo.entity';
import { TypeOrmModule } from '@nestjs/typeorm';

@Module({
  imports: [TypeOrmModule.forFeature([TourOperatorPhoto])],
  controllers: [TourOperatorPhotosController],
  providers: [TourOperatorPhotosService],
})
export class TourOperatorPhotosModule {}
