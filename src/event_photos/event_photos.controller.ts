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
import { EventPhotosService } from './event_photos.service';
import { CreateEventPhotoDto } from './dto/create-event_photo.dto';
import { UpdateEventPhotoDto } from './dto/update-event_photo.dto';
import { FileInterceptor } from '@nestjs/platform-express';
import { diskStorage } from 'multer';
import path from 'path';
import { randomUUID } from 'crypto';
import { UploadEventPhotoDto } from './dto/upload-event_photo';

@Controller('event-photos')
export class EventPhotosController {
  constructor(private readonly eventPhotosService: EventPhotosService) {}

  @Post('upload')
  @UseInterceptors(
    FileInterceptor('file', {
      storage: diskStorage({
        destination: './uploads/events',
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
    @Body() uploadEventPhotoDto: UploadEventPhotoDto,
  ) {
    if (file === null) {
      throw new BadRequestException('Invalid input');
    }

    const eventPhoto: CreateEventPhotoDto = {
      imageName: file.filename,
      eventId: uploadEventPhotoDto.eventId,
    };

    return this.eventPhotosService.create(eventPhoto);
  }

  @Get()
  findAll() {
    return this.eventPhotosService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.eventPhotosService.findOne(+id);
  }

  @Patch(':id')
  update(
    @Param('id') id: string,
    @Body() updateEventPhotoDto: UpdateEventPhotoDto,
  ) {
    return this.eventPhotosService.update(+id, updateEventPhotoDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.eventPhotosService.remove(+id);
  }
}
