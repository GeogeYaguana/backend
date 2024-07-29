import { Test, TestingModule } from '@nestjs/testing';
import { TourOperatorPhotosController } from './tour_operator_photos.controller';
import { TourOperatorPhotosService } from './tour_operator_photos.service';

describe('TourOperatorPhotosController', () => {
  let controller: TourOperatorPhotosController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [TourOperatorPhotosController],
      providers: [TourOperatorPhotosService],
    }).compile();

    controller = module.get<TourOperatorPhotosController>(TourOperatorPhotosController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
