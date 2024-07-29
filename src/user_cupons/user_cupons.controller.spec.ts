import { Test, TestingModule } from '@nestjs/testing';
import { UserCuponsController } from './user_cupons.controller';
import { UserCuponsService } from './user_cupons.service';

describe('UserCuponsController', () => {
  let controller: UserCuponsController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [UserCuponsController],
      providers: [UserCuponsService],
    }).compile();

    controller = module.get<UserCuponsController>(UserCuponsController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
