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
import { FavoriteEventsService } from './favorite_events.service';
import { CreateFavoriteEventDto } from './dto/create-favorite_event.dto';
import { UpdateFavoriteEventDto } from './dto/update-favorite_event.dto';
import { IsNotEmpty, IsOptional, IsUUID } from 'class-validator';

class QueryParams {
  @IsOptional()
  @IsNotEmpty()
  eventId: number;

  @IsOptional()
  @IsNotEmpty()
  @IsUUID()
  userId: string;
}

@Controller('favorite-events')
export class FavoriteEventsController {
  constructor(private readonly favoriteEventsService: FavoriteEventsService) {}

  @Post()
  create(@Body() createFavoriteEventDto: CreateFavoriteEventDto) {
    return this.favoriteEventsService.create(createFavoriteEventDto);
  }

  @Get()
  findAll(@Query() queryParams: QueryParams) {
    return this.favoriteEventsService.findAll(queryParams);
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.favoriteEventsService.findOne(id);
  }

  @Patch(':id')
  update(
    @Param('id') id: string,
    @Body() updateFavoriteEventDto: UpdateFavoriteEventDto,
  ) {
    return this.favoriteEventsService.update(id, updateFavoriteEventDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.favoriteEventsService.remove(id);
  }

  @Post('add-or-remove')
  addOrRemoveFavoriteEvent(
    @Body() createFavoriteEventDto: CreateFavoriteEventDto,
  ) {
    return this.favoriteEventsService.addOrRemoveFavoriteEvent(
      createFavoriteEventDto,
    );
  }
}
