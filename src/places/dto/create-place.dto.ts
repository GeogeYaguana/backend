import { ApiProperty, ApiPropertyOptional } from '@nestjs/swagger';
import { Type } from 'class-transformer';
import {
  IsNotEmpty,
  IsNumber,
  IsObject,
  IsOptional,
  IsPhoneNumber,
  IsUrl,
  ValidateNested,
} from 'class-validator';
import { CreatePlaceOpeningTimeDto } from 'src/place_opening_times/dto/create-place_opening_time.dto';

export class CreatePlaceDto {
  @ApiProperty()
  @IsNotEmpty()
  name: string;

  @ApiProperty()
  @IsNotEmpty()
  description: string;

  @ApiProperty({ example: '+593 990729257' })
  @IsPhoneNumber()
  phone: string;

  @ApiProperty()
  @IsNotEmpty()
  address: string;

  @ApiProperty()
  gpsCoordinates: string;

  @ApiProperty({
    example:
      'https://albadelbosque.com.ec/wp-content/uploads/2023/04/lugaresparavivir-gye.webp',
  })
  thumbnail: string;

  @ApiProperty()
  @IsObject()
  @ValidateNested()
  @Type(() => CreatePlaceOpeningTimeDto)
  openingTimes: CreatePlaceOpeningTimeDto;

  @ApiProperty()
  @IsNumber()
  cantonId: number;

  @ApiProperty()
  @IsNumber()
  categoryId: number;

  @ApiProperty()
  @IsOptional()
  @IsNumber()
  points: number;

  @ApiPropertyOptional({
    example: 'https://www.facebook.com/ecuadorexpeditionsgye/',
  })
  @IsOptional()
  @IsUrl()
  facebook: string;

  @ApiPropertyOptional({
    example: 'https://www.facebook.com/ecuadorexpeditionsgye/',
  })
  @IsOptional()
  @IsUrl()
  instagram: string;

  @ApiPropertyOptional({
    example: 'https://www.facebook.com/ecuadorexpeditionsgye/',
  })
  @IsOptional()
  @IsUrl()
  twitter: string;

  @ApiPropertyOptional({
    example: 'https://www.facebook.com/ecuadorexpeditionsgye/',
  })
  @IsOptional()
  @IsUrl()
  tiktok: string;

  @ApiPropertyOptional({
    example: 'https://www.facebook.com/ecuadorexpeditionsgye/',
  })
  @IsOptional()
  @IsUrl()
  webSite: string;
}
