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
import { TourOperatorPhotosService } from './tour_operator_photos.service';
import { CreateTourOperatorPhotoDto } from './dto/create-tour_operator_photo.dto';
import { UpdateTourOperatorPhotoDto } from './dto/update-tour_operator_photo.dto';
import { FileInterceptor } from '@nestjs/platform-express';
import { diskStorage } from 'multer';
import path from 'path';
import { randomUUID } from 'crypto';
import { UploadTourOperatorPhotoDto } from './dto/upload-tour_operator_photo';

@Controller('tour-operator-photos')
export class TourOperatorPhotosController {
  constructor(
    private readonly tourOperatorPhotosService: TourOperatorPhotosService,
  ) {}

  @Post('upload')
  @UseInterceptors(
    FileInterceptor('file', {
      storage: diskStorage({
        destination: './uploads/tour-operators',
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
    @Body() uploadTourOperatorPhotoDto: UploadTourOperatorPhotoDto,
  ) {
    if (file === null) {
      throw new BadRequestException('Invalid input');
    }

    const tourOperatorPhoto: CreateTourOperatorPhotoDto = {
      imageName: file.filename,
      tourOperatorId: uploadTourOperatorPhotoDto.tourOperatorId,
    };

    return this.tourOperatorPhotosService.create(tourOperatorPhoto);
  }

  @Get()
  findAll() {
    return this.tourOperatorPhotosService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.tourOperatorPhotosService.findOne(+id);
  }

  @Patch(':id')
  update(
    @Param('id') id: string,
    @Body() updateTourOperatorPhotoDto: UpdateTourOperatorPhotoDto,
  ) {
    return this.tourOperatorPhotosService.update(
      +id,
      updateTourOperatorPhotoDto,
    );
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.tourOperatorPhotosService.remove(+id);
  }
}
