import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { TourOperatorsService } from './tour_operators.service';
import { CreateTourOperatorDto } from './dto/create-tour_operator.dto';
import { UpdateTourOperatorDto } from './dto/update-tour_operator.dto';

@Controller('tour-operators')
export class TourOperatorsController {
  constructor(private readonly tourOperatorsService: TourOperatorsService) {}

  @Post()
  create(@Body() createTourOperatorDto: CreateTourOperatorDto) {
    return this.tourOperatorsService.create(createTourOperatorDto);
  }

  @Get()
  findAll() {
    return this.tourOperatorsService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.tourOperatorsService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateTourOperatorDto: UpdateTourOperatorDto) {
    return this.tourOperatorsService.update(+id, updateTourOperatorDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.tourOperatorsService.remove(+id);
  }
}
