import { Test, TestingModule } from '@nestjs/testing';
import { FavoriteEventsService } from './favorite_events.service';

describe('FavoriteEventsService', () => {
  let service: FavoriteEventsService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [FavoriteEventsService],
    }).compile();

    service = module.get<FavoriteEventsService>(FavoriteEventsService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
