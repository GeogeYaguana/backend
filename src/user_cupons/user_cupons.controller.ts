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
import { UserCuponsService } from './user_cupons.service';
import { CreateUserCuponDto } from './dto/create-user_cupon.dto';
import { UpdateUserCuponDto } from './dto/update-user_cupon.dto';
import { BuyUserCuponDto } from './dto/buy-user_cupon.dto';

@Controller('user-cupons')
export class UserCuponsController {
  constructor(private readonly userCuponsService: UserCuponsService) {}

  @Post()
  create(@Body() createUserCuponDto: CreateUserCuponDto) {
    return this.userCuponsService.create(createUserCuponDto);
  }

  @Get()
  findAll(@Query() queryParams: any) {
    return this.userCuponsService.findAll(queryParams);
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.userCuponsService.findOne(id);
  }

  @Patch(':id')
  update(
    @Param('id') id: string,
    @Body() updateUserCuponDto: UpdateUserCuponDto,
  ) {
    return this.userCuponsService.update(id, updateUserCuponDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.userCuponsService.remove(id);
  }

  @Post('buy')
  buyCupon(@Body() buyUserCuponDto: BuyUserCuponDto) {
    return this.userCuponsService.buyCupon(buyUserCuponDto);
  }
}
