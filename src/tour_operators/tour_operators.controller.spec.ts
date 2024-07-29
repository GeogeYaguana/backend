import { Test, TestingModule } from '@nestjs/testing';
import { TourOperatorsController } from './tour_operators.controller';
import { TourOperatorsService } from './tour_operators.service';

describe('TourOperatorsController', () => {
  let controller: TourOperatorsController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [TourOperatorsController],
      providers: [TourOperatorsService],
    }).compile();

    controller = module.get<TourOperatorsController>(TourOperatorsController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
