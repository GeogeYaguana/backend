import { Test, TestingModule } from '@nestjs/testing';
import { UserCuponsService } from './user_cupons.service';

describe('UserCuponsService', () => {
  let service: UserCuponsService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [UserCuponsService],
    }).compile();

    service = module.get<UserCuponsService>(UserCuponsService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
