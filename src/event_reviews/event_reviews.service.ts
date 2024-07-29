import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { CreateEventReviewDto } from './dto/create-event_review.dto';
import { UpdateEventReviewDto } from './dto/update-event_review.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { EventReview } from './entities/event_review.entity';

@Injectable()
export class EventReviewsService {
  constructor(
    @InjectRepository(EventReview)
    private readonly eventReviewRepository: Repository<EventReview>,
  ) {}

  create(createEventReviewDto: CreateEventReviewDto) {
    return this.eventReviewRepository.save(createEventReviewDto);
  }

  findAll(queryParams: any) {
    const { eventId } = queryParams;

    if (eventId && isNaN(+eventId)) {
      throw new HttpException(
        {
          status: HttpStatus.BAD_REQUEST,
          error: 'Bad Request',
          message: 'El parámetro de consulta "eventId" debe ser un número.',
        },
        HttpStatus.BAD_REQUEST,
      );
    }

    return this.eventReviewRepository.find({
      where: {
        eventId: eventId || undefined,
      },
      relations: { user: true },
      order: {
        createdAt: 'DESC', // 'DESC' for descending order, 'ASC' for ascending order
      },
    });
  }

  findOne(id: string) {
    return this.eventReviewRepository.findOneBy({ id });
  }

  update(id: string, updateEventReviewDto: UpdateEventReviewDto) {
    return this.eventReviewRepository.update({ id }, updateEventReviewDto);
  }

  remove(id: string) {
    return this.eventReviewRepository.delete(id);
  }
}
