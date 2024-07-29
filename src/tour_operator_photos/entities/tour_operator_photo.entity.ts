import { TourOperator } from 'src/tour_operators/entities/tour_operator.entity';
import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class TourOperatorPhoto {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  imageName: string;

  @ManyToOne(() => TourOperator, (tourOperator) => tourOperator)
  tourOperator: TourOperator;

  @Column()
  tourOperatorId: number;
}
