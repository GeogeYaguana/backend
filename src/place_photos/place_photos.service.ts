import { Injectable } from '@nestjs/common';
import { CreatePlacePhotoDto } from './dto/create-place_photo.dto';
import { UpdatePlacePhotoDto } from './dto/update-place_photo.dto';
import { PlacePhoto } from './entities/place_photo.entity';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';

@Injectable()
export class PlacePhotosService {
  constructor(
    @InjectRepository(PlacePhoto)
    private readonly placePhotoRepository: Repository<PlacePhoto>,
  ) {}

  create(createPlacePhotoDto: CreatePlacePhotoDto) {
    return this.placePhotoRepository.save(createPlacePhotoDto);
  }

  findAll() {
    return this.placePhotoRepository.find();
  }

  findOne(id: number) {
    return this.placePhotoRepository.findOneBy({ id });
  }

  update(id: number, updatePlacePhotoDto: UpdatePlacePhotoDto) {
    return this.placePhotoRepository.update({ id }, updatePlacePhotoDto);
  }

  remove(id: number) {
    return this.placePhotoRepository.delete(id);
  }
}
