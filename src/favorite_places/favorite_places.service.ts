import { Injectable, NotFoundException } from '@nestjs/common';
import { CreateFavoritePlaceDto } from './dto/create-favorite_place.dto';
import { UpdateFavoritePlaceDto } from './dto/update-favorite_place.dto';
import { FavoritePlace } from './entities/favorite_place.entity';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { User } from 'src/users/entities/user.entity';
import { Place } from 'src/places/entities/place.entity';

@Injectable()
export class FavoritePlacesService {
  constructor(
    @InjectRepository(FavoritePlace)
    private readonly favoritePlaceRepository: Repository<FavoritePlace>,
    @InjectRepository(User)
    private readonly userRepository: Repository<User>,
    @InjectRepository(Place)
    private readonly placeRepository: Repository<Place>,
  ) {}

  async create(createFavoritePlaceDto: CreateFavoritePlaceDto) {
    const { userId, placeId } = createFavoritePlaceDto;

    const user = await this.userRepository.findOneBy({ id: userId });
    if (!user) {
      throw new NotFoundException(`User with ID ${userId} not found`);
    }

    const place = await this.placeRepository.findOneBy({ id: placeId });
    if (!place) {
      throw new NotFoundException(`Place with ID ${placeId} not found`);
    }

    return this.favoritePlaceRepository.save(createFavoritePlaceDto);
  }

  async findAll(queryParams: any) {
    const { userId, placeId } = queryParams;

    if (userId && placeId) {
      return this.favoritePlaceRepository.find({
        where: { placeId, userId },
        relations: { place: { canton: true } },
      });
    }

    if (userId) {
      return this.favoritePlaceRepository.find({
        where: { userId },
        relations: { place: { canton: true } },
      });
    }

    if (placeId) {
      return this.favoritePlaceRepository.find({
        where: { placeId },
        relations: { place: { canton: true } },
      });
    }

    return this.favoritePlaceRepository.find();
  }

  async findOne(id: string) {
    const favoritePlace = await this.favoritePlaceRepository.findOne({
      where: { id },
    });

    if (!favoritePlace) {
      throw new NotFoundException(`FavoritePlace with ID ${id} not found`);
    }

    return favoritePlace;
  }

  async update(id: string, updateFavoritePlaceDto: UpdateFavoritePlaceDto) {
    const existingFavoritePlace = await this.favoritePlaceRepository.findOneBy({
      id,
    });

    if (!existingFavoritePlace) {
      throw new NotFoundException(`FavoritePlace with ID ${id} not found`);
    }

    const { userId, placeId } = updateFavoritePlaceDto;

    if (userId) {
      const user = await this.userRepository.findOneBy({ id: userId });
      if (!user) {
        throw new NotFoundException(`User with ID ${userId} not found`);
      }
    }

    if (placeId) {
      const place = await this.placeRepository.findOneBy({ id: placeId });
      if (!place) {
        throw new NotFoundException(`Place with ID ${placeId} not found`);
      }
    }

    return this.favoritePlaceRepository.update({ id }, updateFavoritePlaceDto);
  }

  async remove(id: string) {
    const favoritePlace = await this.favoritePlaceRepository.findOneBy({ id });

    if (!favoritePlace) {
      throw new NotFoundException(`FavoritePlace with ID ${id} not found`);
    }

    return this.favoritePlaceRepository.remove(favoritePlace);
  }

  async addOrRemoveFavoritePlace(
    createFavoritePlaceDto: CreateFavoritePlaceDto,
  ) {
    const favoritePlace = await this.favoritePlaceRepository.findOne({
      where: {
        placeId: createFavoritePlaceDto.placeId,
        userId: createFavoritePlaceDto.userId,
      },
    });

    if (favoritePlace === null) {
      const newFavoritePlace = await this.create(createFavoritePlaceDto);
      return newFavoritePlace;
    }

    const deletedFavoritePlace = await this.remove(favoritePlace.id);
    return deletedFavoritePlace;
  }
}
