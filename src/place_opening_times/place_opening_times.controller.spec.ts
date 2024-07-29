import { Test, TestingModule } from '@nestjs/testing';
import { PlaceOpeningTimesController } from './place_opening_times.controller';
import { PlaceOpeningTimesService } from './place_opening_times.service';

describe('PlaceOpeningTimesController', () => {
  let controller: PlaceOpeningTimesController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [PlaceOpeningTimesController],
      providers: [PlaceOpeningTimesService],
    }).compile();

    controller = module.get<PlaceOpeningTimesController>(PlaceOpeningTimesController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
