import { Module } from '@nestjs/common';
import { FavoriteEventsService } from './favorite_events.service';
import { FavoriteEventsController } from './favorite_events.controller';
import { FavoriteEvent } from './entities/favorite_event.entity';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Event } from 'src/events/entities/event.entity';
import { User } from 'src/users/entities/user.entity';

@Module({
  imports: [TypeOrmModule.forFeature([FavoriteEvent, User, Event])],
  controllers: [FavoriteEventsController],
  providers: [FavoriteEventsService],
})
export class FavoriteEventsModule {}
