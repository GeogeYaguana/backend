import { Cupon } from 'src/cupons/entities/cupon.entity';
import { User } from 'src/users/entities/user.entity';
import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class UserCupon {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Column()
  quantity: number;

  @Column()
  code: string;

  @ManyToOne(() => User, (user) => user)
  user: User;

  @Column()
  userId: string;

  @ManyToOne(() => Cupon, (cupon) => cupon)
  cupon: Cupon;

  @Column()
  cuponId: number;
}
