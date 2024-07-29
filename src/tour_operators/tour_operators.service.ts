import { Injectable, NotFoundException } from '@nestjs/common';
import { CreateTourOperatorDto } from './dto/create-tour_operator.dto';
import { UpdateTourOperatorDto } from './dto/update-tour_operator.dto';
import { Repository } from 'typeorm';
import { TourOperator } from './entities/tour_operator.entity';
import { InjectRepository } from '@nestjs/typeorm';
import { TourOperatorPhoto } from 'src/tour_operator_photos/entities/tour_operator_photo.entity';

@Injectable()
export class TourOperatorsService {
  constructor(
    @InjectRepository(TourOperator)
    private tourOperatorRepository: Repository<TourOperator>,
    @InjectRepository(TourOperatorPhoto)
    private readonly tourOperatorPhotoRepository: Repository<TourOperatorPhoto>,
  ) {}

  create(createTourOperatorDto: CreateTourOperatorDto) {
    return this.tourOperatorRepository.save(createTourOperatorDto);
  }

  findAll() {
    return this.tourOperatorRepository.find();
  }

  async findOne(id: number) {
    const tourOperator = await this.tourOperatorRepository.findOne({
      where: { id },
    });

    if (!tourOperator) {
      throw new NotFoundException(`TourOperator with ID ${id} not found`);
    }

    const tourOperatorPhotos = await this.tourOperatorPhotoRepository.findBy({
      tourOperatorId: id,
    });

    const imageUrls = tourOperatorPhotos.map(
      (tourOperatorPhoto) => tourOperatorPhoto.imageName,
    );

    return {
      ...tourOperator,
      imageUrls,
    };
  }

  update(id: number, updateTourOperatorDto: UpdateTourOperatorDto) {
    return this.tourOperatorRepository.update({ id }, updateTourOperatorDto);
  }

  remove(id: number) {
    return this.tourOperatorRepository.delete(id);
  }
}
