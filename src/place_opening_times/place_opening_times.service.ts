import { Injectable } from '@nestjs/common';
import { CreatePlaceOpeningTimeDto } from './dto/create-place_opening_time.dto';
import { UpdatePlaceOpeningTimeDto } from './dto/update-place_opening_time.dto';
import { PlaceOpeningTime } from './entities/place_opening_time.entity';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';

@Injectable()
export class PlaceOpeningTimesService {
  constructor(
    @InjectRepository(PlaceOpeningTime)
    private readonly placeOpeningTimeRepository: Repository<PlaceOpeningTime>,
  ) {}

  create(createPlaceOpeningTimeDto: CreatePlaceOpeningTimeDto) {
    return this.placeOpeningTimeRepository.save(createPlaceOpeningTimeDto);
  }

  findAll() {
    return this.placeOpeningTimeRepository.find();
  }

  findOne(id: number) {
    return this.placeOpeningTimeRepository.findOneBy({ id });
  }

  update(id: number, updatePlaceOpeningTimeDto: UpdatePlaceOpeningTimeDto) {
    return this.placeOpeningTimeRepository.update(
      { id },
      updatePlaceOpeningTimeDto,
    );
  }

  remove(id: number) {
    return this.placeOpeningTimeRepository.delete(id);
  }
}
