import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { CreatePlaceReviewDto } from './dto/create-place_review.dto';
import { UpdatePlaceReviewDto } from './dto/update-place_review.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { PlaceReview } from './entities/place_review.entity';
import { Repository } from 'typeorm';

@Injectable()
export class PlaceReviewsService {
  constructor(
    @InjectRepository(PlaceReview)
    private readonly placeReviewRepository: Repository<PlaceReview>,
  ) {}

  create(createPlaceReviewDto: CreatePlaceReviewDto) {
    return this.placeReviewRepository.save(createPlaceReviewDto);
  }

  findAll(queryParams: any) {
    const { placeId, userId } = queryParams;

    if (placeId && isNaN(+placeId)) {
      throw new HttpException(
        {
          status: HttpStatus.BAD_REQUEST,
          error: 'Bad Request',
          message: 'El parámetro de consulta "placeId" debe ser un número.',
        },
        HttpStatus.BAD_REQUEST,
      );
    }

    if (placeId && userId) {
      return this.placeReviewRepository.find({
        where: {
          placeId: placeId,
          userId: userId,
        },
        relations: { user: true },
        order: {
          createdAt: 'DESC', // 'DESC' for descending order, 'ASC' for ascending order
        },
      });
    }

    if (placeId) {
      return this.placeReviewRepository.find({
        where: {
          placeId: placeId,
        },
        relations: { user: true },
        order: {
          createdAt: 'DESC', // 'DESC' for descending order, 'ASC' for ascending order
        },
      });
    }

    if (userId) {
      return this.placeReviewRepository.find({
        where: {
          userId: userId,
        },
        relations: { user: true, place: true },
        order: {
          createdAt: 'DESC', // 'DESC' for descending order, 'ASC' for ascending order
        },
      });
    }
  }

  findOne(id: string) {
    return this.placeReviewRepository.findOneBy({ id });
  }

  update(id: string, updatePlaceReviewDto: UpdatePlaceReviewDto) {
    return this.placeReviewRepository.update({ id }, updatePlaceReviewDto);
  }

  remove(id: string) {
    return this.placeReviewRepository.delete(id);
  }
}
