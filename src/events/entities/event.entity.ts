import { Canton } from 'src/cantons/entities/canton.entity';
import {
  Column,
  Entity,
  JoinColumn,
  ManyToOne,
  OneToOne,
  PrimaryGeneratedColumn,
} from 'typeorm';

@Entity()
export class Event {
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

  @ManyToOne(() => Canton, (canton) => canton)
  canton: Canton;

  @Column()
  cantonId: number;

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
}
