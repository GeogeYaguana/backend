import { Test, TestingModule } from '@nestjs/testing';
import { PlaceOpeningTimesService } from './place_opening_times.service';

describe('PlaceOpeningTimesService', () => {
  let service: PlaceOpeningTimesService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [PlaceOpeningTimesService],
    }).compile();

    service = module.get<PlaceOpeningTimesService>(PlaceOpeningTimesService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
