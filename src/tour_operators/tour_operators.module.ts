import { Module } from '@nestjs/common';
import { TourOperatorsService } from './tour_operators.service';
import { TourOperatorsController } from './tour_operators.controller';
import { TourOperator } from './entities/tour_operator.entity';
import { TypeOrmModule } from '@nestjs/typeorm';
import { TourOperatorPhoto } from '../tour_operator_photos/entities/tour_operator_photo.entity';

@Module({
  imports: [TypeOrmModule.forFeature([TourOperator, TourOperatorPhoto])],
  controllers: [TourOperatorsController],
  providers: [TourOperatorsService],
})
export class TourOperatorsModule {}
