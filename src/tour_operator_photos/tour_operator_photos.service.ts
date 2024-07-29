import { Injectable } from '@nestjs/common';
import { CreateTourOperatorPhotoDto } from './dto/create-tour_operator_photo.dto';
import { UpdateTourOperatorPhotoDto } from './dto/update-tour_operator_photo.dto';
import { TourOperatorPhoto } from './entities/tour_operator_photo.entity';
import { Repository } from 'typeorm';
import { InjectRepository } from '@nestjs/typeorm';

@Injectable()
export class TourOperatorPhotosService {
  constructor(
    @InjectRepository(TourOperatorPhoto)
    private readonly tourOperatorPhotoRepository: Repository<TourOperatorPhoto>,
  ) {}

  create(createTourOperatorPhotoDto: CreateTourOperatorPhotoDto) {
    return this.tourOperatorPhotoRepository.save(createTourOperatorPhotoDto);
  }

  findAll() {
    return this.tourOperatorPhotoRepository.find();
  }

  findOne(id: number) {
    return this.tourOperatorPhotoRepository.findOneBy({ id });
  }

  update(id: number, updateTourOperatorPhotoDto: UpdateTourOperatorPhotoDto) {
    return this.tourOperatorPhotoRepository.update(
      { id },
      updateTourOperatorPhotoDto,
    );
  }

  remove(id: number) {
    return this.tourOperatorPhotoRepository.delete(id);
  }
}
