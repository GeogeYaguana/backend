import { Event } from 'src/events/entities/event.entity';
import { User } from 'src/users/entities/user.entity';
import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class FavoriteEvent {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @ManyToOne(() => Event, (event) => event)
  event: Event;

  @Column()
  eventId: number;

  @ManyToOne(() => User, (user) => user)
  user: User;

  @Column()
  userId: string;
}
