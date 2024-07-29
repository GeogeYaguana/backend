import { Module } from '@nestjs/common';
import { EventOpeningDateService } from './event-opening-date.service';
import { EventOpeningDateController } from './event-opening-date.controller';
import { EventOpeningDate } from './entities/event-opening-date.entity';
import { TypeOrmModule } from '@nestjs/typeorm';

@Module({
  imports: [TypeOrmModule.forFeature([EventOpeningDate])],
  controllers: [EventOpeningDateController],
  providers: [EventOpeningDateService],
})
export class EventOpeningDateModule {}
