import { Test, TestingModule } from '@nestjs/testing';
import { FavoritePlacesController } from './favorite_places.controller';
import { FavoritePlacesService } from './favorite_places.service';

describe('FavoritePlacesController', () => {
  let controller: FavoritePlacesController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [FavoritePlacesController],
      providers: [FavoritePlacesService],
    }).compile();

    controller = module.get<FavoritePlacesController>(FavoritePlacesController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
