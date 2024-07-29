import { ConfigModule, ConfigService } from '@nestjs/config';
import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UsersModule } from './users/users.module';
import { TypeOrmModule } from '@nestjs/typeorm';
import { CuponsModule } from './cupons/cupons.module';
import { EventsModule } from './events/events.module';
import { CategoriesModule } from './categories/categories.module';
import { PlacesModule } from './places/places.module';
import { CantonsModule } from './cantons/cantons.module';
import { TourOperatorsModule } from './tour_operators/tour_operators.module';
import { StoresModule } from './stores/stores.module';
import { PlacePhotosModule } from './place_photos/place_photos.module';
import { UserCuponsModule } from './user_cupons/user_cupons.module';
import { PlaceOpeningTimesModule } from './place_opening_times/place_opening_times.module';
import { FavoritePlacesModule } from './favorite_places/favorite_places.module';
import { FavoriteEventsModule } from './favorite_events/favorite_events.module';
import { PlaceReviewsModule } from './place_reviews/place_reviews.module';
import { EventReviewsModule } from './event_reviews/event_reviews.module';
import { EventPhotosModule } from './event_photos/event_photos.module';
import { TourOperatorPhotosModule } from './tour_operator_photos/tour_operator_photos.module';
import { EventOpeningDateModule } from './event-opening-date/event-opening-date.module';
import { AuthModule } from './auth/auth.module';

@Module({
  imports: [
    ConfigModule.forRoot({
      isGlobal: true,
    }),
    TypeOrmModule.forRootAsync({
      imports: [ConfigModule],
      useFactory: (configService: ConfigService) => ({
        type: 'postgres',
        host: '192.168.70.65',
        port: 5433,
        username: 'user_crud',
        password: 'root',
        database: 'db_crud',
        entities: [__dirname + '/**/*.entity{.ts,.js}'],
        synchronize: true,
        autoLoadEntities: true,
        options: { encrypt: false },
      }),
      inject: [ConfigService],
    }),
    UsersModule,
    CuponsModule,
    EventsModule,
    CategoriesModule,
    PlacesModule,
    CantonsModule,
    TourOperatorsModule,
    StoresModule,
    PlacePhotosModule,
    UserCuponsModule,
    PlaceOpeningTimesModule,
    FavoritePlacesModule,
    FavoriteEventsModule,
    PlaceReviewsModule,
    EventReviewsModule,
    EventPhotosModule,
    TourOperatorPhotosModule,
    EventOpeningDateModule,
    AuthModule,
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
