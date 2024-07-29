import { Test, TestingModule } from '@nestjs/testing';
import { TourOperatorsService } from './tour_operators.service';

describe('TourOperatorsService', () => {
  let service: TourOperatorsService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [TourOperatorsService],
    }).compile();

    service = module.get<TourOperatorsService>(TourOperatorsService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
