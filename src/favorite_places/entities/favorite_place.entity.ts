import { Place } from 'src/places/entities/place.entity';
import { User } from 'src/users/entities/user.entity';
import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class FavoritePlace {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @ManyToOne(() => Place, (place) => place)
  place: Place;

  @Column()
  placeId: number;

  @ManyToOne(() => User, (user) => user)
  user: User;

  @Column()
  userId: string;
}
