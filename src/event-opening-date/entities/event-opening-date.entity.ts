import { Event } from 'src/events/entities/event.entity';
import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class EventOpeningDate {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  year: string;

  @Column()
  month: string;

  @Column()
  day: string;

  @Column()
  openingTime: string;

  @Column()
  closingTime: string;

  @ManyToOne(() => Event, (event) => event)
  event: Event;

  @Column()
  eventId: number;
}
