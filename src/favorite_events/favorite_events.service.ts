import { Injectable, NotFoundException } from '@nestjs/common';
import { CreateFavoriteEventDto } from './dto/create-favorite_event.dto';
import { UpdateFavoriteEventDto } from './dto/update-favorite_event.dto';
import { Repository } from 'typeorm';
import { FavoriteEvent } from './entities/favorite_event.entity';
import { InjectRepository } from '@nestjs/typeorm';
import { Event } from 'src/events/entities/event.entity';
import { User } from 'src/users/entities/user.entity';

@Injectable()
export class FavoriteEventsService {
  constructor(
    @InjectRepository(FavoriteEvent)
    private readonly favoriteEventRepository: Repository<FavoriteEvent>,
    @InjectRepository(User)
    private readonly userRepository: Repository<User>,
    @InjectRepository(Event)
    private readonly eventRepository: Repository<Event>,
  ) {}

  async create(createFavoriteEventDto: CreateFavoriteEventDto) {
    const { userId, eventId } = createFavoriteEventDto;

    const user = await this.userRepository.findOneBy({ id: userId });
    if (!user) {
      throw new NotFoundException(`User with ID ${userId} not found`);
    }

    const event = await this.eventRepository.findOneBy({ id: eventId });
    if (!event) {
      throw new NotFoundException(`Event with ID ${eventId} not found`);
    }

    return this.favoriteEventRepository.save(createFavoriteEventDto);
  }

  async findAll(queryParams: any) {
    const { userId, eventId } = queryParams;

    if (userId && eventId) {
      return this.favoriteEventRepository.find({
        where: { eventId, userId },
        relations: { event: { canton: true } },
      });
    }

    if (userId) {
      return this.favoriteEventRepository.find({
        where: { userId },
        relations: { event: { canton: true } },
      });
    }

    if (eventId) {
      return this.favoriteEventRepository.find({
        where: { eventId },
        relations: { event: { canton: true } },
      });
    }

    return this.favoriteEventRepository.find();
  }

  async findOne(id: string) {
    const favoriteEvent = await this.favoriteEventRepository.findOne({
      where: { id },
    });

    if (!favoriteEvent) {
      throw new NotFoundException(`FavoriteEvent with ID ${id} not found`);
    }

    return favoriteEvent;
  }

  async update(id: string, updateFavoriteEventDto: UpdateFavoriteEventDto) {
    const existingFavoriteEvent = await this.favoriteEventRepository.findOneBy({
      id,
    });

    if (!existingFavoriteEvent) {
      throw new NotFoundException(`FavoriteEvent with ID ${id} not found`);
    }

    const { userId, eventId } = updateFavoriteEventDto;

    if (userId) {
      const user = await this.userRepository.findOneBy({ id: userId });
      if (!user) {
        throw new NotFoundException(`User with ID ${userId} not found`);
      }
    }

    if (eventId) {
      const event = await this.eventRepository.findOneBy({ id: eventId });
      if (!event) {
        throw new NotFoundException(`Event with ID ${eventId} not found`);
      }
    }

    return this.favoriteEventRepository.update({ id }, updateFavoriteEventDto);
  }

  async remove(id: string) {
    const favoriteEvent = await this.favoriteEventRepository.findOneBy({ id });

    if (!favoriteEvent) {
      throw new NotFoundException(`FavoriteEvent with ID ${id} not found`);
    }

    return this.favoriteEventRepository.remove(favoriteEvent);
  }

  async addOrRemoveFavoriteEvent(
    createFavoriteEventDto: CreateFavoriteEventDto,
  ) {
    const favoriteEvent = await this.favoriteEventRepository.findOne({
      where: {
        eventId: createFavoriteEventDto.eventId,
        userId: createFavoriteEventDto.userId,
      },
    });

    if (favoriteEvent === null) {
      const newFavoriteEvent = await this.create(createFavoriteEventDto);
      return newFavoriteEvent;
    }

    const deletedFavoriteEvent = await this.remove(favoriteEvent.id);
    return deletedFavoriteEvent;
  }
}
