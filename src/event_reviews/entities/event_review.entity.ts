import { BaseEntity } from 'src/base/base.entity';
import { Event } from 'src/events/entities/event.entity';
import { User } from 'src/users/entities/user.entity';
import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class EventReview extends BaseEntity {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Column()
  stars: number;

  @Column()
  comment: string;

  @ManyToOne(() => Event, (event) => event)
  event: Event;

  @Column()
  eventId: number;

  @ManyToOne(() => User, (user) => user)
  user: User;

  @Column()
  userId: string;
}
