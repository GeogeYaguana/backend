import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  Query,
} from '@nestjs/common';
import { FavoritePlacesService } from './favorite_places.service';
import { CreateFavoritePlaceDto } from './dto/create-favorite_place.dto';
import { UpdateFavoritePlaceDto } from './dto/update-favorite_place.dto';
import { IsNotEmpty, IsOptional, IsUUID } from 'class-validator';

class QueryParams {
  @IsOptional()
  @IsNotEmpty()
  placeId: number;

  @IsOptional()
  @IsNotEmpty()
  @IsUUID()
  userId: string;
}

@Controller('favorite-places')
export class FavoritePlacesController {
  constructor(private readonly favoritePlacesService: FavoritePlacesService) {}

  @Post()
  create(@Body() createFavoritePlaceDto: CreateFavoritePlaceDto) {
    return this.favoritePlacesService.create(createFavoritePlaceDto);
  }

  @Get()
  findAll(@Query() queryParams: QueryParams) {
    return this.favoritePlacesService.findAll(queryParams);
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.favoritePlacesService.findOne(id);
  }

  @Patch(':id')
  update(
    @Param('id') id: string,
    @Body() updateFavoritePlaceDto: UpdateFavoritePlaceDto,
  ) {
    return this.favoritePlacesService.update(id, updateFavoritePlaceDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.favoritePlacesService.remove(id);
  }

  @Post('add-or-remove')
  addOrRemoveFavoritePlace(
    @Body() createFavoritePlaceDto: CreateFavoritePlaceDto,
  ) {
    return this.favoritePlacesService.addOrRemoveFavoritePlace(
      createFavoritePlaceDto,
    );
  }
}
