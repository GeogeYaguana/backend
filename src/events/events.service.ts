import { Injectable, NotFoundException } from '@nestjs/common';
import { CreateEventDto } from './dto/create-event.dto';
import { UpdateEventDto } from './dto/update-event.dto';
import { Event } from './entities/event.entity';
import { Repository } from 'typeorm';
import { InjectRepository } from '@nestjs/typeorm';
import { EventPhoto } from 'src/event_photos/entities/event_photo.entity';
import { EventOpeningDate } from 'src/event-opening-date/entities/event-opening-date.entity';

@Injectable()
export class EventsService {
  constructor(
    @InjectRepository(Event)
    private readonly eventRepository: Repository<Event>,
    @InjectRepository(EventPhoto)
    private readonly eventPhotoRepository: Repository<EventPhoto>,
    @InjectRepository(EventOpeningDate)
    private readonly eventOpeningDateRepository: Repository<EventOpeningDate>,
  ) {}

  async create(createEventDto: CreateEventDto) {
    const { ...eventData } = createEventDto;

    const newEvent = this.eventRepository.create(eventData);

    return this.eventRepository.save(newEvent);
  }

  async findAll() {
    return this.eventRepository.find();
  }

  async findOne(id: number) {
    const event = await this.eventRepository.findOne({
      where: { id },
      relations: { canton: true },
    });

    if (!event) {
      throw new NotFoundException(`Event with ID ${id} not found`);
    }

    const eventDates = await this.eventOpeningDateRepository.find({
      where: { eventId: id },
    });

    const eventPhotos = await this.eventPhotoRepository.findBy({ eventId: id });

    const imageUrls = eventPhotos.map((eventPhoto) => eventPhoto.imageName);

    console.log(imageUrls);

    return {
      ...event,
      imageUrls,
      eventDates,
    };
  }

  async update(id: number, updateEventDto: UpdateEventDto) {
    const existingEvent = await this.eventRepository.findOneBy({ id });

    if (!existingEvent) {
      throw new NotFoundException(`Event with ID ${id} not found`);
    }

    this.eventRepository.merge(existingEvent, updateEventDto);

    return this.eventRepository.save(existingEvent);
  }

  async remove(id: number) {
    const event = await this.eventRepository.findOneBy({ id });

    if (!event) {
      throw new NotFoundException(`Event with ID ${id} not found`);
    }

    return this.eventRepository.remove(event);
  }
}
