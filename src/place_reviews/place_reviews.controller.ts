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
import { PlaceReviewsService } from './place_reviews.service';
import { CreatePlaceReviewDto } from './dto/create-place_review.dto';
import { UpdatePlaceReviewDto } from './dto/update-place_review.dto';
import { IsNotEmpty, IsOptional, IsUUID } from 'class-validator';

class QueryParams {
  @IsOptional()
  @IsNotEmpty()
  placeId: number;

  @IsOptional()
  @IsUUID()
  userId: string;
}

@Controller('place-reviews')
export class PlaceReviewsController {
  constructor(private readonly placeReviewsService: PlaceReviewsService) {}

  @Post()
  create(@Body() createPlaceReviewDto: CreatePlaceReviewDto) {
    return this.placeReviewsService.create(createPlaceReviewDto);
  }

  @Get()
  findAll(@Query() queryParams: QueryParams) {
    return this.placeReviewsService.findAll(queryParams);
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.placeReviewsService.findOne(id);
  }

  @Patch(':id')
  update(
    @Param('id') id: string,
    @Body() updatePlaceReviewDto: UpdatePlaceReviewDto,
  ) {
    return this.placeReviewsService.update(id, updatePlaceReviewDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.placeReviewsService.remove(id);
  }
}
