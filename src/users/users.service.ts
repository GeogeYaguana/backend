import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { CreateUserDto } from './dto/create-user.dto';
import { UpdateUserDto } from './dto/update-user.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { User } from './entities/user.entity';
import { AddPoitnsUserDto } from './dto/add-points-user-dto';
import { Place } from 'src/places/entities/place.entity';

@Injectable()
export class UsersService {
  constructor(
    @InjectRepository(User)
    private userRepository: Repository<User>,
    @InjectRepository(Place)
    private placeRepository: Repository<Place>,
  ) {}

  create(createUserDto: CreateUserDto) {
    return this.userRepository.save(createUserDto);
  }

  findAll() {
    return this.userRepository.find();
  }

  findOne(id: string) {
    return this.userRepository.findOneBy({ id });
  }

  update(id: string, updateUserDto: UpdateUserDto) {
    return this.userRepository.update({ id }, updateUserDto);
  }

  async addPoints(id: string, addPoitnsUserDto: AddPoitnsUserDto) {
    const user = await this.userRepository.findOneBy({ id });
    if (user === null) {
      throw new HttpException(
        {
          status: HttpStatus.NOT_FOUND,
          error: 'Not found',
          message: `User not found`,
        },
        HttpStatus.NOT_FOUND,
      );
    }

    const place = await this.placeRepository.findOneBy({
      id: addPoitnsUserDto.placeId,
    });
    if (place === null) {
      throw new HttpException(
        {
          status: HttpStatus.NOT_FOUND,
          error: 'Not found',
          message: `Place not found`,
        },
        HttpStatus.NOT_FOUND,
      );
    }

    const newPoints = {
      points: user.points + place.points,
    };

    return this.userRepository.update({ id }, newPoints);
  }

  remove(id: string) {
    return this.userRepository.delete(id);
  }

  findByUsername(username: string) {
    return this.userRepository.findOneBy({ username });
  }
}
