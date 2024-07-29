import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class TourOperator {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  name: string;

  @Column()
  description: string;

  @Column()
  email: string;

  @Column()
  phone: string;

  @Column({ nullable: true })
  thumbnail: string;

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
