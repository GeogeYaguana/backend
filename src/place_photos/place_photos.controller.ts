import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  UseInterceptors,
  UploadedFile,
  BadRequestException,
} from '@nestjs/common';
import { PlacePhotosService } from './place_photos.service';
import { CreatePlacePhotoDto } from './dto/create-place_photo.dto';
import { UpdatePlacePhotoDto } from './dto/update-place_photo.dto';
import { FileInterceptor } from '@nestjs/platform-express';

import { Express } from 'express';
import { diskStorage } from 'multer';
import * as path from 'path';
import { randomUUID } from 'crypto';
import { UploadPlacePhotoDto } from './dto/upload-place_photo.dto';

@Controller('place-photos')
export class PlacePhotosController {
  constructor(private readonly placePhotosService: PlacePhotosService) {}

  @Post('upload')
  @UseInterceptors(
    FileInterceptor('file', {
      storage: diskStorage({
        destination: './uploads/places',
        filename(req, file, callback) {
          const filename =
            path.parse(file.originalname).name.replace(/\s/g, '') +
            randomUUID();
          const extension = path.parse(file.originalname).ext;

          callback(null, `${filename}${extension}`);
        },
      }),
    }),
  )
  create(
    @UploadedFile() file: Express.Multer.File,
    @Body() uploadPlacePhotoDto: UploadPlacePhotoDto,
  ) {
    if (file === null) {
      throw new BadRequestException('Invalid input');
    }

    const placePhoto: CreatePlacePhotoDto = {
      imageName: file.filename,
      placeId: uploadPlacePhotoDto.placeId,
    };

    return this.placePhotosService.create(placePhoto);
  }

  @Get()
  findAll() {
    return this.placePhotosService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.placePhotosService.findOne(+id);
  }

  @Patch(':id')
  update(
    @Param('id') id: string,
    @Body() updatePlacePhotoDto: UpdatePlacePhotoDto,
  ) {
    return this.placePhotosService.update(+id, updatePlacePhotoDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.placePhotosService.remove(+id);
  }
}
