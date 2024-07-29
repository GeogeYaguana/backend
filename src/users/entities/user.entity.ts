import { Column, Entity, PrimaryGeneratedColumn, BeforeInsert } from 'typeorm';
import { hash } from 'bcrypt';

@Entity()
export class User {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Column()
  firstName: string;

  @Column()
  lastName: string;

  @Column({ unique: true })
  username: string;

  @Column({ unique: true ,nullable: true })
  email: string;

  @Column()
  password: string;

  @Column()
  points: number;

  @Column({ nullable: true })
  avatar: string;
}
