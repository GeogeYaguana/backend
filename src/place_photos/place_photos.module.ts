import { Module } from '@nestjs/common';
import { PlacePhotosService } from './place_photos.service';
import { PlacePhotosController } from './place_photos.controller';
import { PlacePhoto } from './entities/place_photo.entity';
import { TypeOrmModule } from '@nestjs/typeorm';

@Module({
  imports: [TypeOrmModule.forFeature([PlacePhoto])],
  controllers: [PlacePhotosController],
  providers: [PlacePhotosService],
})
export class PlacePhotosModule {}
