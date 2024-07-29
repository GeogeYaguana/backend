import { PartialType } from '@nestjs/mapped-types';
import { CreateUserCuponDto } from './create-user_cupon.dto';

export class UpdateUserCuponDto extends PartialType(CreateUserCuponDto) {}
