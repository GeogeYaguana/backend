import { Test, TestingModule } from '@nestjs/testing';
import { EventOpeningDateService } from './event-opening-date.service';

describe('EventOpeningDateService', () => {
  let service: EventOpeningDateService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [EventOpeningDateService],
    }).compile();

    service = module.get<EventOpeningDateService>(EventOpeningDateService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
