import { Store } from 'src/stores/entities/store.entity';

import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class Cupon {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  name: string;

  @Column()
  description: string;

  @Column()
  code: string;

  @Column({ type: 'timestamp' })
  expirationDate: Date;

  @Column({ default: 0 })
  pointsNeeded: number;

  @Column({ default: 0 })
  percentageDiscount: number;

  @Column()
  thumbnail: string;

  @ManyToOne(() => Store, (store) => store.cupons, { nullable: false })
  store: Store;

  @Column()
  storeId: number;
}
