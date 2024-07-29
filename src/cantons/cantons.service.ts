import { Injectable } from '@nestjs/common';
import { CreateCantonDto } from './dto/create-canton.dto';
import { UpdateCantonDto } from './dto/update-canton.dto';
import { Repository } from 'typeorm';
import { Canton } from './entities/canton.entity';
import { InjectRepository } from '@nestjs/typeorm';

@Injectable()
export class CantonsService {
  constructor(
    @InjectRepository(Canton)
    private cantonRepository: Repository<Canton>,
  ) {}

  create(createCantonDto: CreateCantonDto) {
    return this.cantonRepository.save(createCantonDto);
  }

  findAll() {
    return this.cantonRepository.find();
  }

  findOne(id: number) {
    return this.cantonRepository.findOneBy({ id });
  }

  update(id: number, updateCantonDto: UpdateCantonDto) {
    return this.cantonRepository.update({ id }, updateCantonDto);
  }

  remove(id: number) {
    return this.cantonRepository.delete(id);
  }
}
