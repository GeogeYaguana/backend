import { ApiProperty } from '@nestjs/swagger';

export class CreateCantonDto {
  @ApiProperty()
  name: string;

  @ApiProperty({
    example:
      'https://albadelbosque.com.ec/wp-content/uploads/2023/04/lugaresparavivir-gye.webp',
  })
  thumbnail: string;
}
