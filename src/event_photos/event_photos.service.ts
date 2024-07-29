import { Injectable } from '@nestjs/common';
import { CreateEventPhotoDto } from './dto/create-event_photo.dto';
import { UpdateEventPhotoDto } from './dto/update-event_photo.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { EventPhoto } from './entities/event_photo.entity';

@Injectable()
export class EventPhotosService {
  constructor(
    @InjectRepository(EventPhoto)
    private readonly eventPhotoRepository: Repository<EventPhoto>,
  ) {}

  create(createEventPhotoDto: CreateEventPhotoDto) {
    return this.eventPhotoRepository.save(createEventPhotoDto);
  }

  findAll() {
    return this.eventPhotoRepository.find();
  }

  findOne(id: number) {
    return this.eventPhotoRepository.findOneBy({ id });
  }

  update(id: number, updateEventPhotoDto: UpdateEventPhotoDto) {
    return this.eventPhotoRepository.update({ id }, updateEventPhotoDto);
  }

  remove(id: number) {
    return this.eventPhotoRepository.delete(id);
  }
}
