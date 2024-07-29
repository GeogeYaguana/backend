import { Canton } from 'src/cantons/entities/canton.entity';
import { Cupon } from 'src/cupons/entities/cupon.entity';
import {
  Column,
  Entity,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
} from 'typeorm';

@Entity()
export class Store {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  name: string;

  @Column()
  description: string;

  @Column()
  phone: string;

  @Column()
  address: string;

  @Column()
  gpsCoordinates: string;

  @ManyToOne(() => Canton, (canton) => canton)
  canton: Canton;

  @Column()
  cantonId: number;

  @OneToMany(() => Cupon, (cupon) => cupon.store)
  cupons: Cupon[];
}
