import { ApiProperty, ApiPropertyOptional } from '@nestjs/swagger';
import {
  IsNotEmpty,
  IsNumber,
  IsOptional,
  IsPhoneNumber,
  IsUrl,
} from 'class-validator';

export class CreateEventDto {
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

  @ApiProperty()
  @IsNumber()
  cantonId: number;

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
