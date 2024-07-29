import { Test, TestingModule } from '@nestjs/testing';
import { EventOpeningDateController } from './event-opening-date.controller';
import { EventOpeningDateService } from './event-opening-date.service';

describe('EventOpeningDateController', () => {
  let controller: EventOpeningDateController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [EventOpeningDateController],
      providers: [EventOpeningDateService],
    }).compile();

    controller = module.get<EventOpeningDateController>(EventOpeningDateController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
