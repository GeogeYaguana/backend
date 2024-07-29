import { PartialType } from '@nestjs/mapped-types';
import { CreateTourOperatorDto } from './create-tour_operator.dto';

export class UpdateTourOperatorDto extends PartialType(CreateTourOperatorDto) {}
