import {
  HttpException,
  HttpStatus,
  Injectable,
  NotFoundException,
} from '@nestjs/common';
import { CreatePlaceDto } from './dto/create-place.dto';
import { UpdatePlaceDto } from './dto/update-place.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { Place } from './entities/place.entity';
import { PlaceOpeningTime } from 'src/place_opening_times/entities/place_opening_time.entity';
import { Repository } from 'typeorm';
import { PlacePhoto } from 'src/place_photos/entities/place_photo.entity';

@Injectable()
export class PlacesService {
  constructor(
    @InjectRepository(Place)
    private readonly placeRepository: Repository<Place>,
    @InjectRepository(PlaceOpeningTime)
    private readonly placeOpeningTimeRepository: Repository<PlaceOpeningTime>,
    @InjectRepository(PlacePhoto)
    private readonly placePhotoRepository: Repository<PlacePhoto>,
  ) {}

  async create(createPlaceDto: CreatePlaceDto) {
    const { openingTimes, ...placeData } = createPlaceDto;

    const newPlace = this.placeRepository.create(placeData);

    const newOpeningTime = this.placeOpeningTimeRepository.create(openingTimes);
    newPlace.openingTimes = newOpeningTime;

    return this.placeRepository.save(newPlace);
  }

  async findAll(queryParams: any) {
    const { cantonId, categoryId } = queryParams;

    if ((cantonId || categoryId) && (isNaN(+cantonId) || isNaN(+categoryId))) {
      throw new HttpException(
        {
          status: HttpStatus.BAD_REQUEST,
          error: 'Bad Request',
          message:
            'Los parámetros de consulta "cantonId" y "categoryId" deben ser números.',
        },
        HttpStatus.BAD_REQUEST,
      );
    }

    return this.placeRepository.find({
      where: {
        cantonId: cantonId || undefined,
        categoryId: categoryId || undefined,
      },
      relations: { openingTimes: true },
    });
  }

  async findCantons(queryParams: any) {
    const { categoryId } = queryParams;

    if (categoryId && isNaN(+categoryId)) {
      throw new HttpException(
        {
          status: HttpStatus.BAD_REQUEST,
          error: 'Bad Request',
          message: 'El parámetro de consulta "categoryId" debe ser un número.',
        },
        HttpStatus.BAD_REQUEST,
      );
    }

    const places = await this.placeRepository.find({
      where: {
        categoryId: categoryId || undefined,
      },
      relations: { canton: true },
    });

    const cantons = places.map((place) => place.canton);

    // Use Map to keep track of unique cantons based on the 'name' property
    const uniqueCantonsMap = new Map();

    cantons.forEach((canton) => {
      // Use 'name' property as the key to check for uniqueness
      uniqueCantonsMap.set(canton.name, canton);
    });

    // Convert Map values back to an array
    const uniqueCantonsArray = Array.from(uniqueCantonsMap.values());

    return uniqueCantonsArray;
  }

  async findOne(id: number) {
    const place = await this.placeRepository.findOne({
      where: { id },
      relations: { openingTimes: true },
    });

    if (!place) {
      throw new NotFoundException(`Place with ID ${id} not found`);
    }

    const placePhotos = await this.placePhotoRepository.findBy({ placeId: id });

    const imageUrls = placePhotos.map((placePhoto) => placePhoto.imageName);

    return {
      ...place,
      imageUrls,
    };
  }

  async update(id: number, updatePlaceDto: UpdatePlaceDto) {
    const existingPlace = await this.placeRepository.findOneBy({ id });

    if (!existingPlace) {
      throw new NotFoundException(`Place with ID ${id} not found`);
    }

    this.placeRepository.merge(existingPlace, updatePlaceDto);

    if (updatePlaceDto.openingTimes) {
      const { openingTimes } = updatePlaceDto;

      this.placeOpeningTimeRepository.merge(
        existingPlace.openingTimes,
        openingTimes,
      );
    }

    return this.placeRepository.save(existingPlace);
  }

  async remove(id: number) {
    const place = await this.placeRepository.findOneBy({ id });

    if (!place) {
      throw new NotFoundException(`Place with ID ${id} not found`);
    }

    await this.placeOpeningTimeRepository.delete(place.openingTimes.id);

    return this.placeRepository.remove(place);
  }
}
