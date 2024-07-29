import { Event } from 'src/events/entities/event.entity';
import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class EventPhoto {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  imageName: string;

  @ManyToOne(() => Event, (event) => event)
  event: Event;

  @Column()
  eventId: number;
}
