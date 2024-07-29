import { Injectable } from '@nestjs/common';
import { CreateCuponDto } from './dto/create-cupon.dto';
import { UpdateCuponDto } from './dto/update-cupon.dto';
import { Repository } from 'typeorm';
import { Cupon } from './entities/cupon.entity';
import { InjectRepository } from '@nestjs/typeorm';

@Injectable()
export class CuponsService {
  constructor(
    @InjectRepository(Cupon)
    private cuponRepository: Repository<Cupon>,
  ) {}

  create(createCuponDto: CreateCuponDto) {
    return this.cuponRepository.save(createCuponDto);
  }

  findAll() {
    return this.cuponRepository.find({ relations: { store: true } });
  }

  findOne(id: number) {
    return this.cuponRepository.findOne({
      where: { id },
      relations: { store: true },
    });
  }

  update(id: number, updateCuponDto: UpdateCuponDto) {
    return this.cuponRepository.update({ id }, updateCuponDto);
  }

  remove(id: number) {
    return this.cuponRepository.delete(id);
  }
}
