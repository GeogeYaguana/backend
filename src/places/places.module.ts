import { Module } from '@nestjs/common';
import { PlacesService } from './places.service';
import { PlacesController } from './places.controller';
import { Place } from './entities/place.entity';
import { TypeOrmModule } from '@nestjs/typeorm';
import { PlaceOpeningTime } from 'src/place_opening_times/entities/place_opening_time.entity';
import { PlacePhoto } from 'src/place_photos/entities/place_photo.entity';

@Module({
  imports: [TypeOrmModule.forFeature([Place, PlaceOpeningTime, PlacePhoto])],
  controllers: [PlacesController],
  providers: [PlacesService],
})
export class PlacesModule {}
