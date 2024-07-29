import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { CreateEventOpeningDateDto } from './dto/create-event-opening-date.dto';
import { UpdateEventOpeningDateDto } from './dto/update-event-opening-date.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { EventOpeningDate } from './entities/event-opening-date.entity';

@Injectable()
export class EventOpeningDateService {
  constructor(
    @InjectRepository(EventOpeningDate)
    private readonly eventOpeningDateRepository: Repository<EventOpeningDate>,
  ) {}

  async create(createEventOpeningDateDto: CreateEventOpeningDateDto) {
    return this.eventOpeningDateRepository.save(createEventOpeningDateDto);
  }

  async findAll(queryParams: any) {
    const { month, year } = queryParams;

    return this.eventOpeningDateRepository.find({
      where: {
        year,
        month,
      },
      relations: { event: { canton: true } },
    });
  }

  async findOne(id: number) {
    return this.eventOpeningDateRepository.findOne({
      where: {
        id: id,
      },
      relations: { event: { canton: true } },
    });
  }

  async findOneByEventId(eventId: number) {
    return this.eventOpeningDateRepository.findOne({
      where: {
        eventId,
      },
      relations: { event: { canton: true } },
    });
  }

  async update(
    id: number,
    updateEventOpeningDateDto: UpdateEventOpeningDateDto,
  ) {
    return this.eventOpeningDateRepository.update(
      { id },
      updateEventOpeningDateDto,
    );
  }

  async remove(id: number) {
    return this.eventOpeningDateRepository.delete(id);
  }
}
