import { Module } from '@nestjs/common';
import { EventPhotosService } from './event_photos.service';
import { EventPhotosController } from './event_photos.controller';
import { EventPhoto } from './entities/event_photo.entity';
import { TypeOrmModule } from '@nestjs/typeorm';

@Module({
  imports: [TypeOrmModule.forFeature([EventPhoto])],
  controllers: [EventPhotosController],
  providers: [EventPhotosService],
})
export class EventPhotosModule {}
