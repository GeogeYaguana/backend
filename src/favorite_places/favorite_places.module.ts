import { Module } from '@nestjs/common';
import { FavoritePlacesService } from './favorite_places.service';
import { FavoritePlacesController } from './favorite_places.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { FavoritePlace } from './entities/favorite_place.entity';
import { User } from 'src/users/entities/user.entity';
import { Place } from 'src/places/entities/place.entity';

@Module({
  imports: [TypeOrmModule.forFeature([FavoritePlace, User, Place])],
  controllers: [FavoritePlacesController],
  providers: [FavoritePlacesService],
})
export class FavoritePlacesModule {}
