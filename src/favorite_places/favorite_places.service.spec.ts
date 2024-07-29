import { Test, TestingModule } from '@nestjs/testing';
import { FavoritePlacesService } from './favorite_places.service';

describe('FavoritePlacesService', () => {
  let service: FavoritePlacesService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [FavoritePlacesService],
    }).compile();

    service = module.get<FavoritePlacesService>(FavoritePlacesService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
