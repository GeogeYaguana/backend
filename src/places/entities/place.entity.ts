import { Canton } from 'src/cantons/entities/canton.entity';
import { Category } from 'src/categories/entities/category.entity';
import { PlaceOpeningTime } from 'src/place_opening_times/entities/place_opening_time.entity';
import {
  Column,
  Entity,
  JoinColumn,
  ManyToOne,
  OneToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';

@Entity()
export class Place {
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

  @Column()
  thumbnail: string;

  @OneToOne(() => PlaceOpeningTime, {
    cascade: true,
    eager: true,
    onDelete: 'CASCADE',
  })
  @JoinColumn()
  openingTimes: PlaceOpeningTime;

  @ManyToOne(() => Canton, (canton) => canton)
  canton: Canton;

  @Column()
  cantonId: number;

  @ManyToOne(() => Category, (category) => category)
  category: Category;

  @Column()
  categoryId: number;

  @Column({ nullable: true })
  facebook: string;

  @Column({ nullable: true })
  instagram: string;

  @Column({ nullable: true })
  twitter: string;

  @Column({ nullable: true })
  tiktok: string;

  @Column({ nullable: true })
  webSite: string;

  @Column({ default: 0 })
  points: number;
}
