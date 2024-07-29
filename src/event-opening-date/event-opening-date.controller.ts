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
import { EventOpeningDateService } from './event-opening-date.service';
import { CreateEventOpeningDateDto } from './dto/create-event-opening-date.dto';
import { UpdateEventOpeningDateDto } from './dto/update-event-opening-date.dto';

@Controller('event-opening-date')
export class EventOpeningDateController {
  constructor(
    private readonly eventOpeningDateService: EventOpeningDateService,
  ) {}

  @Post()
  create(@Body() createEventOpeningDateDto: CreateEventOpeningDateDto) {
    return this.eventOpeningDateService.create(createEventOpeningDateDto);
  }

  @Get()
  findAll(@Query() queryParams: any) {
    return this.eventOpeningDateService.findAll(queryParams);
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.eventOpeningDateService.findOne(+id);
  }

  @Get('events/:id')
  findOneByEventId(@Param('id') id: string) {
    return this.eventOpeningDateService.findOneByEventId(+id);
  }

  @Patch(':id')
  update(
    @Param('id') id: string,
    @Body() updateEventOpeningDateDto: UpdateEventOpeningDateDto,
  ) {
    return this.eventOpeningDateService.update(+id, updateEventOpeningDateDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.eventOpeningDateService.remove(+id);
  }
}
