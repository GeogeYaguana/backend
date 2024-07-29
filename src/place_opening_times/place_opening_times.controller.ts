import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { PlaceOpeningTimesService } from './place_opening_times.service';
import { CreatePlaceOpeningTimeDto } from './dto/create-place_opening_time.dto';
import { UpdatePlaceOpeningTimeDto } from './dto/update-place_opening_time.dto';

@Controller('place-opening-times')
export class PlaceOpeningTimesController {
  constructor(private readonly placeOpeningTimesService: PlaceOpeningTimesService) {}

  @Post()
  create(@Body() createPlaceOpeningTimeDto: CreatePlaceOpeningTimeDto) {
    return this.placeOpeningTimesService.create(createPlaceOpeningTimeDto);
  }

  @Get()
  findAll() {
    return this.placeOpeningTimesService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.placeOpeningTimesService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updatePlaceOpeningTimeDto: UpdatePlaceOpeningTimeDto) {
    return this.placeOpeningTimesService.update(+id, updatePlaceOpeningTimeDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.placeOpeningTimesService.remove(+id);
  }
}
