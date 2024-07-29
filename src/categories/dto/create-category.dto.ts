import { ApiProperty } from '@nestjs/swagger';

export class CreateCategoryDto {
  @ApiProperty()
  name: string;

  @ApiProperty()
  hook: string;

  @ApiProperty()
  description: string;
}
