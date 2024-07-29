import { Test, TestingModule } from '@nestjs/testing';
import { TourOperatorPhotosService } from './tour_operator_photos.service';

describe('TourOperatorPhotosService', () => {
  let service: TourOperatorPhotosService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [TourOperatorPhotosService],
    }).compile();

    service = module.get<TourOperatorPhotosService>(TourOperatorPhotosService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
