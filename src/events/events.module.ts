import { Module } from '@nestjs/common';
import { EventsService } from './events.service';
import { EventsController } from './events.controller';
import { Event } from './entities/event.entity';
import { TypeOrmModule } from '@nestjs/typeorm';
import { EventPhoto } from 'src/event_photos/entities/event_photo.entity';
import { EventOpeningDate } from 'src/event-opening-date/entities/event-opening-date.entity';

@Module({
  imports: [TypeOrmModule.forFeature([Event, EventPhoto, EventOpeningDate])],
  controllers: [EventsController],
  providers: [EventsService],
})
export class EventsModule {}
