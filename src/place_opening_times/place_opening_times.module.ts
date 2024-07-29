import { Module } from '@nestjs/common';
import { PlaceOpeningTimesService } from './place_opening_times.service';
import { PlaceOpeningTimesController } from './place_opening_times.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { PlaceOpeningTime } from './entities/place_opening_time.entity';

@Module({
  imports: [TypeOrmModule.forFeature([PlaceOpeningTime])],
  controllers: [PlaceOpeningTimesController],
  providers: [PlaceOpeningTimesService],
})
export class PlaceOpeningTimesModule {}
