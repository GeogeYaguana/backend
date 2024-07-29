import { BaseEntity } from 'src/base/base.entity';
import { Place } from 'src/places/entities/place.entity';
import { User } from 'src/users/entities/user.entity';
import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class PlaceReview extends BaseEntity {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Column()
  stars: number;

  @Column()
  comment: string;

  @ManyToOne(() => Place, (place) => place)
  place: Place;

  @Column()
  placeId: number;

  @ManyToOne(() => User, (user) => user)
  user: User;

  @Column()
  userId: string;
}
