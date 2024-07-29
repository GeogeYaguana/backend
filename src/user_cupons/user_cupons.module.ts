import { Module } from '@nestjs/common';
import { UserCuponsService } from './user_cupons.service';
import { UserCuponsController } from './user_cupons.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserCupon } from './entities/user_cupon.entity';
import { User } from 'src/users/entities/user.entity';
import { Cupon } from 'src/cupons/entities/cupon.entity';

@Module({
  imports: [TypeOrmModule.forFeature([UserCupon, User, Cupon])],
  controllers: [UserCuponsController],
  providers: [UserCuponsService],
})
export class UserCuponsModule {}
