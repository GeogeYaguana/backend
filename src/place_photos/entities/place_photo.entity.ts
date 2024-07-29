import { Place } from 'src/places/entities/place.entity';
import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class PlacePhoto {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  imageName: string;

  @ManyToOne(() => Place, (place) => place)
  place: Place;

  @Column()
  placeId: number;
}
