import { ApiProperty, ApiPropertyOptional } from '@nestjs/swagger';
import { IsEmail, IsOptional, IsPhoneNumber, IsUrl } from 'class-validator';

export class CreateTourOperatorDto {
  @ApiProperty()
  name: string;

  @ApiProperty()
  description: string;

  @ApiProperty()
  @IsEmail()
  email: string;

  @ApiProperty({ example: '+593 990729257' })
  @IsPhoneNumber()
  phone: string;

  @ApiPropertyOptional({
    example:
      'https://yt3.googleusercontent.com/11_eslRqeslKgO-35kNJAwQueg2WXwkIH5emXGB-Ao_jzBwtVX9gzP55FLRl_iXxvxLnhChRog=s900-c-k-c0x00ffffff-no-rj',
  })
  @IsUrl()
  thumbnail: string;

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
