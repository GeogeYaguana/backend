import { Injectable } from '@nestjs/common';
import { CreateStoreDto } from './dto/create-store.dto';
import { UpdateStoreDto } from './dto/update-store.dto';
import { Repository } from 'typeorm';
import { Store } from './entities/store.entity';
import { InjectRepository } from '@nestjs/typeorm';

@Injectable()
export class StoresService {
  constructor(
    @InjectRepository(Store)
    private storeRepository: Repository<Store>,
  ) {}

  create(createStoreDto: CreateStoreDto) {
    return this.storeRepository.save(createStoreDto);
  }

  findAll() {
    return this.storeRepository.find();
  }

  findOne(id: number) {
    return this.storeRepository.findOneBy({ id });
  }

  update(id: number, updateStoreDto: UpdateStoreDto) {
    return this.storeRepository.update({ id }, updateStoreDto);
  }

  remove(id: number) {
    return this.storeRepository.delete(id);
  }
}
