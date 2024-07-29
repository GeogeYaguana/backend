-- Clear data from the "place_opening_time" table
TRUNCATE TABLE public.place_opening_time RESTART IDENTITY CASCADE;

-- Clear data from the "favorite_place" table
TRUNCATE TABLE public.favorite_place RESTART IDENTITY CASCADE;

-- Clear data from the "favorite_event" table
TRUNCATE TABLE public.favorite_event RESTART IDENTITY CASCADE;

-- Clear data from the "place_photo" table
TRUNCATE TABLE public.place_photo RESTART IDENTITY CASCADE;

-- Clear data from the "event_photo" table
TRUNCATE TABLE public.event_photo RESTART IDENTITY CASCADE;

-- Clear data from the "tour_operator_photo" table
TRUNCATE TABLE public.tour_operator_photo RESTART IDENTITY CASCADE;

-- Clear data from the "place_review" table
TRUNCATE TABLE public.place_review RESTART IDENTITY CASCADE;

-- Clear data from the "event_review" table
TRUNCATE TABLE public.event_review RESTART IDENTITY CASCADE;

-- Clear data from the "place" table
TRUNCATE TABLE public.place RESTART IDENTITY CASCADE;

-- Clear data from the "category" table
TRUNCATE TABLE public.category RESTART IDENTITY CASCADE;

-- Clear data from the "canton" table
TRUNCATE TABLE public.canton RESTART IDENTITY CASCADE;

-- Clear data from the "user_cupon" table
TRUNCATE TABLE public.user_cupon RESTART IDENTITY CASCADE;

-- Clear data from the "user" table
TRUNCATE TABLE public.user RESTART IDENTITY CASCADE;

-- Clear data from the "cupon" table
TRUNCATE TABLE public.cupon RESTART IDENTITY CASCADE;

-- Clear data from the "store" table
TRUNCATE TABLE public.store RESTART IDENTITY CASCADE;

-- Clear data from the "tour_operator" table
TRUNCATE TABLE public.tour_operator RESTART IDENTITY CASCADE;

-- Clear data from the "event_opening_date" table
TRUNCATE TABLE public.event_opening_date RESTART IDENTITY CASCADE;

-- Clear data from the "event" table
TRUNCATE TABLE public.event RESTART IDENTITY CASCADE;



-- Insertar datos para la tabla 'canton'
INSERT INTO public.canton(id, name, thumbnail) VALUES
(1, 'Alfredo Baquerizo Moreno', 'https://ec.viajandox.com/uploads/attractive_1403.jpg'),
(2, 'Antonio Elizalde (Bucay)', 'https://albadelbosque.com.ec/wp-content/uploads/2023/04/lugaresparavivir-gye.webp'),
(3, 'Balao', 'https://img.goraymi.com/2016/08/09/ad69839ee6e04d7cb2ef62c1b0168103_xl.jpg'),
(4, 'Balzar', 'https://gadmbalzar.gob.ec/wp-content/uploads/2023/07/IGLESIA-SAN-JACINTO-DE-BALZAR-scaled.jpg'),
(5, 'Colimes', 'https://www.turismo.gob.ec/wp-content/uploads/2020/12/Guayacanes1.jpg'),
(6, 'Daule', 'https://lanacion.com.ec/wp-content/uploads/2021/08/4610a8a9b1f5db44e121b23bf110437b_L.jpg'),
(7, 'Duran', 'https://img.goraymi.com/2018/06/21/f0a79077583a93aa37b1136faa6a27ef_xl.jpg'),
(8, 'El Empalme', 'https://www.eluniverso.com/resizer/dy6PTQhuloJdldgL0m-ZKN6oFZE=/1195x670/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/UUZ35HG5VZEWNK4CLGNOE5Q7KM.jpg'),
(9, 'El Triunfo', 'https://ecuadors.live/wp-content/uploads/2023/10/canton-el-triunfo.jpg'),
(10, 'Guayaquil', 'https://www.shutterstock.com/image-photo/guayaqui-ecuador-most-important-buildings-260nw-2171119705.jpg'),
(11, 'Isidro Ayora', 'https://img.goraymi.com/2016/08/10/7be45820f92a97bbb05426a8534b5851_lg.jpg'),
(12, 'Lomas de Sargentillo', 'https://static.wixstatic.com/media/d15d15_b9c37a25e54249e886c5b76ff6456e70~mv2.jpg/v1/fill/w_720,h_643,al_c,q_85,enc_auto/d15d15_b9c37a25e54249e886c5b76ff6456e70~mv2.jpg'),
(13, 'Marcelino Maridueña', 'https://ecuadors.live/wp-content/uploads/2023/07/Parque-ecologico-Marcelino-Mariduena-ecuador.jpeg'),
(14, 'Milagro', 'https://www.turismo.gob.ec/wp-content/uploads/2020/03/8047342338_a6561dec1f_h.jpg'),
(15, 'Naranjal', 'https://guayas.gob.ec/wp-content/uploads/2021/07/naranjal-ciudad.jpg'),
(16, 'Naranjito', 'https://img.goraymi.com/2016/08/10/c1df4e9bad70a9944b8e4f08c1a4eb01_xl.jpg'),
(17, 'Nobol', 'https://www.enciclopediadelecuador.com/wp-content/uploads/2016/05/Nobol.jpg'),
(18, 'Palestina', 'https://guayas.gob.ec/wp-content/uploads/2021/07/Palestina-2558-1-1.jpg'),
(19, 'Pedro Carbo', 'https://pedrocarbo.gob.ec/wp-content/uploads/2021/05/DSC_0517-2-800x445.jpg'),
(20, 'Playas', 'https://img.goraymi.com/2021/01/24/e807c5f29de3843d992d52a7293e839f_xl.jpg'),
(21, 'Salitre', 'https://img.goraymi.com/2016/08/10/70d84db3955f36a341cdaaaa0728818a_xl.jpg'),
(22, 'Samborondón', 'https://www.sisepuedeecuador.com/wp-content/uploads/2021/09/cropped-casas-orilla-rio-samborondon-guayaquil-getty-1.jpg'),
(23, 'Santa Lucía', 'https://img.goraymi.com/2016/08/10/1c9260851aea3ecf7c964d9aa2c29ac7_xl.jpg'),
(24, 'Simón Bolivar', 'https://guayas.gob.ec/wp-content/uploads/2021/07/MG_9550-1-1.jpg'),
(25, 'Yaguachi', 'https://upload.wikimedia.org/wikipedia/commons/8/8a/SageoEG_-_Mar%C3%ADa_Fernanda_Landin_-_Yaguachi_-_La_iglesia_de_San_Jacinto.jpg');


-- Insertar datos para la tabla 'category'
INSERT INTO public.category(id, name, hook, description) VALUES
(1, 'Arte y cultura', 'Explora la riqueza cultural', 'Descubre el arte y la cultura de diversas comunidades alrededor del mundo.'),
(2, 'Aventura', '¡Vive la emoción!', 'Embárcate en emocionantes aventuras y desafíos que te llevarán a lugares increíbles.'),
(3, 'Bienestar', 'Encuentra tu equilibrio', 'Sumérgete en experiencias que promueven el bienestar físico y mental.'),
(4, 'Del sabor', 'Satisface tus sentidos', 'Explora la diversidad culinaria y disfruta de sabores auténticos en cada destino.'),
(5, 'Naturaleza', 'Conéctate con la naturaleza', 'Descubre la belleza natural y experimenta la tranquilidad en entornos impresionantes.'),
(6, 'Náutico', 'Navega hacia nuevas experiencias', 'Embárcate en aventuras acuáticas y descubre destinos desde el mar.'),
(7, 'Sol y playa', 'Relájate bajo el sol', 'Disfruta de playas paradisíacas y experiencias soleadas en destinos tropicales.'),
(8, 'Vivencial', 'Sumérgete en la vida local', 'Vive de cerca la cultura y las tradiciones locales en experiencias auténticas.'),
(9, 'Reuniones y eventos', 'Celebra momentos especiales', 'Encuentra el lugar perfecto para reuniones y eventos inolvidables.');



INSERT INTO public.place_opening_time(
    id, monday, tuesday, wednesday, thursday, friday, saturday, sunday)
    VALUES (1, '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00');

INSERT INTO public.place_opening_time(
    id, monday, tuesday, wednesday, thursday, friday, saturday, sunday)
    VALUES (2, '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00');

INSERT INTO public.place_opening_time(
    id, monday, tuesday, wednesday, thursday, friday, saturday, sunday)
    VALUES (3, '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00');

INSERT INTO public.place_opening_time(
    id, monday, tuesday, wednesday, thursday, friday, saturday, sunday)
    VALUES (4, '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00');

INSERT INTO public.place_opening_time(
    id, monday, tuesday, wednesday, thursday, friday, saturday, sunday)
    VALUES (5, '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00');

INSERT INTO public.place_opening_time(
    id, monday, tuesday, wednesday, thursday, friday, saturday, sunday)
    VALUES (6, '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00');

INSERT INTO public.place_opening_time(
    id, monday, tuesday, wednesday, thursday, friday, saturday, sunday)
    VALUES (7, '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00');

INSERT INTO public.place_opening_time(
    id, monday, tuesday, wednesday, thursday, friday, saturday, sunday)
    VALUES (8, '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00');

INSERT INTO public.place_opening_time(
    id, monday, tuesday, wednesday, thursday, friday, saturday, sunday)
    VALUES (9, '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00');

INSERT INTO public.place_opening_time(
    id, monday, tuesday, wednesday, thursday, friday, saturday, sunday)
    VALUES (10, '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00');

INSERT INTO public.place_opening_time(
    id, monday, tuesday, wednesday, thursday, friday, saturday, sunday)
    VALUES (11, '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00');

INSERT INTO public.place_opening_time(
    id, monday, tuesday, wednesday, thursday, friday, saturday, sunday)
    VALUES (12, '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00');

INSERT INTO public.place_opening_time(
    id, monday, tuesday, wednesday, thursday, friday, saturday, sunday)
    VALUES (13, '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00');

INSERT INTO public.place_opening_time(
    id, monday, tuesday, wednesday, thursday, friday, saturday, sunday)
    VALUES (14, '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00');

INSERT INTO public.place_opening_time(
    id, monday, tuesday, wednesday, thursday, friday, saturday, sunday)
    VALUES (15, '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00');

INSERT INTO public.place_opening_time(
    id, monday, tuesday, wednesday, thursday, friday, saturday, sunday)
    VALUES (16, '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00');

INSERT INTO public.place_opening_time(
    id, monday, tuesday, wednesday, thursday, friday, saturday, sunday)
    VALUES (17, '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00');

INSERT INTO public.place_opening_time(
    id, monday, tuesday, wednesday, thursday, friday, saturday, sunday)
    VALUES (18, '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00');

INSERT INTO public.place_opening_time(
    id, monday, tuesday, wednesday, thursday, friday, saturday, sunday) 
    VALUES (19, '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00');

INSERT INTO public.place_opening_time(
    id, monday, tuesday, wednesday, thursday, friday, saturday, sunday) 
    VALUES (20, '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00');

INSERT INTO public.place_opening_time(
    id, monday, tuesday, wednesday, thursday, friday, saturday, sunday) 
    VALUES (21, '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00');

INSERT INTO public.place_opening_time(
    id, monday, tuesday, wednesday, thursday, friday, saturday, sunday) 
    VALUES (22, '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00');

INSERT INTO public.place_opening_time(
    id, monday, tuesday, wednesday, thursday, friday, saturday, sunday) 
    VALUES (23, '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00', '08:00 - 17:00');






-- -- Ejemplo de lugar turístico en Guayaquil, categoría "Arte y cultura"
-- INSERT INTO public.place(
--     id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
--     VALUES (1, 'Malecón 2000', 'Hermoso malecón a orillas del río Guayas', '+593 2 1234567', 'Malecón Simón Bolívar', '-2.1897, -79.8842', 1, 1, 1, 'https://albadelbosque.com.ec/wp-content/uploads/2023/04/lugaresparavivir-gye.webp', 100);

-- -- Ejemplo de lugar turístico en Alfredo Baquerizo Moreno, categoría "Naturaleza"
-- INSERT INTO public.place(
--     id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
--     VALUES (2, 'Reserva Ecológica Manglares Churute', 'Área natural con manglares y diversidad de aves', '+593 2 7654321', 'Km 25 vía a Data', '-2.3368, -79.8287', 2, 5, 2, 'https://albadelbosque.com.ec/wp-content/uploads/2023/04/lugaresparavivir-gye.webp', 60);

-- -- Ejemplo de lugar turístico en Balao, categoría "Sol y playa"
-- INSERT INTO public.place(
--     id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
--     VALUES (3, 'Playa de Balao', 'Hermosa playa para disfrutar del sol y el mar', '+593 2 9876543', 'Balao', '-2.9045, -79.7132', 3, 7, 3, 'https://albadelbosque.com.ec/wp-content/uploads/2023/04/lugaresparavivir-gye.webp', 90);

-- -- Ejemplo de lugar turístico en Durán, categoría "Aventura"
-- INSERT INTO public.place(
--     id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
--     VALUES (4, 'Parque Lineal La Isla', 'Área verde con senderos para caminar y andar en bicicleta', '+593 2 3456789', 'Durán', '-2.1573, -79.9074', 6, 2, 4, 'https://albadelbosque.com.ec/wp-content/uploads/2023/04/lugaresparavivir-gye.webp', 200);

-- -- Ejemplo de lugar turístico en Naranjito, categoría "Vivencial"
-- INSERT INTO public.place(
--     id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
--     VALUES (5, 'Mercado de Naranjito', 'Colorido mercado con productos locales y artesanías', '+593 2 8765432', 'Centro de Naranjito', '-2.6741, -79.6162', 16, 8, 5, 'https://albadelbosque.com.ec/wp-content/uploads/2023/04/lugaresparavivir-gye.webp', 10);

-- -- Ejemplo de lugar turístico en Balzar, categoría "Náutico"
-- INSERT INTO public.place(
--     id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
--     VALUES (6, 'Embarcadero Balzar', 'Punto de partida para excursiones en bote por el río Guayas', '+593 2 2345678', 'Balzar', '-1.8333, -79.7167', 4, 6, 6, 'https://albadelbosque.com.ec/wp-content/uploads/2023/04/lugaresparavivir-gye.webp', 10);

-- -- Ejemplo de lugar turístico en Samborondón, categoría "Bienestar"
-- INSERT INTO public.place(
--     id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
--     VALUES (7, 'Spa Oasis', 'Lugar para relajarse y disfrutar de tratamientos de bienestar', '+593 2 7654321', 'Centro Comercial Puntilla', '-2.1450, -79.8343', 21, 3, 7, 'https://albadelbosque.com.ec/wp-content/uploads/2023/04/lugaresparavivir-gye.webp', 10);

-- -- Ejemplo de lugar turístico en Playas, categoría "Sol y playa"
-- INSERT INTO public.place(
--     id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
--     VALUES (8, 'Playa General Villamil', 'Extensa playa con arena blanca y aguas cálidas', '+593 2 8765432', 'Playas', '-2.6379, -80.3859', 20, 7, 8, 'https://albadelbosque.com.ec/wp-content/uploads/2023/04/lugaresparavivir-gye.webp', 10);

-- -- Ejemplo de lugar turístico en Nobol, categoría "Del sabor"
-- INSERT INTO public.place(
--     id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
--     VALUES (9, 'Feria Gastronómica de Nobol', 'Evento anual con la mejor comida local', '+593 2 9876543', 'Plaza Central de Nobol', '-1.8443, -79.5484', 17, 4, 9, 'https://albadelbosque.com.ec/wp-content/uploads/2023/04/lugaresparavivir-gye.webp', 10);

-- -- Ejemplo de lugar turístico en Palestina, categoría "Naturaleza"
-- INSERT INTO public.place(
--     id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
--     VALUES (10, 'Sendero Ecológico Palestina', 'Recorrido natural con flora y fauna autóctona', '+593 2 8765432', 'Palestina', '-2.2042, -79.5761', 18, 5, 10, 'https://albadelbosque.com.ec/wp-content/uploads/2023/04/lugaresparavivir-gye.webp', 10);

-- -- Ejemplo de lugar turístico en Isidro Ayora, categoría "Arte y cultura"
-- INSERT INTO public.place(
--     id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
--     VALUES (11, 'Museo Municipal Isidro Ayora', 'Exhibición de la historia y cultura local', '+593 2 3456789', 'Centro de Isidro Ayora', '-2.9470, -79.7094', 11, 1, 11, 'https://albadelbosque.com.ec/wp-content/uploads/2023/04/lugaresparavivir-gye.webp', 10);

-- -- Ejemplo de lugar turístico en Milagro, categoría "Reuniones y eventos"
-- INSERT INTO public.place(
--     id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
--     VALUES (12, 'Centro de Convenciones Milagro', 'Espacio para eventos y conferencias', '+593 2 2345678', 'Milagro', '-2.1180, -79.5907', 13, 9, 12, 'https://albadelbosque.com.ec/wp-content/uploads/2023/04/lugaresparavivir-gye.webp', 10);

-- -- Ejemplo de lugar turístico en Simón Bolivar, categoría "Vivencial"
-- INSERT INTO public.place(
--     id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
--     VALUES (13, 'Experiencia Gastronómica Simón Bolivar', 'Degustación de platos tradicionales', '+593 2 7654321', 'Centro de Simón Bolivar', '-2.3073, -79.7872', 22, 8, 13, 'https://albadelbosque.com.ec/wp-content/uploads/2023/04/lugaresparavivir-gye.webp', 10);

-- -- Ejemplo de lugar turístico en Daule, categoría "Aventura"
-- INSERT INTO public.place(
--     id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
--     VALUES (14, 'Parque de Aventuras Daule', 'Área de entretenimiento con actividades al aire libre', '+593 2 8765432', 'Daule', '-1.8634, -79.9778', 6, 2, 14, 'https://albadelbosque.com.ec/wp-content/uploads/2023/04/lugaresparavivir-gye.webp', 10);

-- -- Ejemplo de lugar turístico en Yaguachi, categoría "Sol y playa"
-- INSERT INTO public.place(
--     id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
--     VALUES (15, 'Playa de Yaguachi', 'Playa tranquila para relajarse y disfrutar del sol', '+593 2 2345678', 'Yaguachi', '-2.1151, -79.7204', 25, 7, 15, 'https://albadelbosque.com.ec/wp-content/uploads/2023/04/lugaresparavivir-gye.webp', 10);

-- -- Ejemplo de lugar turístico en Santa Lucía, categoría "Náutico"
-- INSERT INTO public.place(
--     id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
--     VALUES (16, 'Marina Santa Lucía', 'Puerto deportivo para embarcaciones y actividades acuáticas', '+593 2 3456789', 'Santa Lucía', '-2.2749, -79.5798', 24, 6, 16, 'https://albadelbosque.com.ec/wp-content/uploads/2023/04/lugaresparavivir-gye.webp', 10);

-- -- Ejemplo de lugar turístico en El Empalme, categoría "Bienestar"
-- INSERT INTO public.place(
--     id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
--     VALUES (17, 'Spa Serenidad', 'Retiro de bienestar con tratamientos relajantes', '+593 2 9876543', 'El Empalme', '-1.8554, -79.9583', 7, 3, 17, 'https://albadelbosque.com.ec/wp-content/uploads/2023/04/lugaresparavivir-gye.webp', 10);

-- -- Ejemplo de lugar turístico en Naranjal, categoría "Arte y cultura"
-- INSERT INTO public.place(
--     id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
--     VALUES (18, 'Teatro Municipal Naranjal', 'Escenario cultural con eventos y presentaciones', '+593 2 8765432', 'Naranjal', '-2.6653, -79.6150', 15, 1, 18, 'https://albadelbosque.com.ec/wp-content/uploads/2023/04/lugaresparavivir-gye.webp', 10);

-- Place 1
INSERT INTO public.place (
    id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
VALUES 
    (1, 'El Pantanal', 'Descubre la maravilla de la naturaleza en "El Pantanal", nuestro zoológico comprometido con la preservación y admiración de la diversidad de la vida silvestre. Sumérgete en un entorno exuberante que recrea hábitats naturales y proporciona un refugio para una amplia variedad de especies fascinantes.', '123-456-7890', 'Kilometro 23, Guayaquil', '(-2.005252166393186, -79.96468225212176)', 6, 5, 1, 'https://ame.gob.ec/wp-content/uploads/2020/10/turismo-5.jpg', 5);

-- Place 2
INSERT INTO public.place (
    id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
VALUES 
    (2, 'Malecón de Durán', 'El Malecón de Durán es un encantador paseo ribereño ubicado a lo largo de las orillas del río Guayas, en la ciudad de Durán, provincia del Guayas, Ecuador. Este espacio público ofrece a residentes y visitantes un escape tranquilo y pintoresco, proporcionando un entorno relajante con vistas panorámicas al río y a la ciudad vecina de Guayaquil.', '123-3210-5555', 'Malecon de durán, Durán', '(-2.1707463744475914, -79.85476217135997)', 7, 1, 2, 'https://i.pinimg.com/originals/1b/dd/49/1bdd4924094807b6739959141d650746.jpg', 100);

-- Place 3
INSERT INTO public.place (
    id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
VALUES 
    (3, 'Malecón 2000', 'El Malecón 2000 es un icónico paseo a lo largo del río Guayas que combina naturaleza, arte y entretenimiento. En este extenso malecón, encontrarás parques, jardines, esculturas, fuentes y una variedad de restaurantes y tiendas. Es un lugar ideal para pasear, disfrutar de la vista al río y participar en actividades culturales y recreativas.', '123-3210-5555', 'Malecon de 2000, Guayaquil', '(-2.19160027888786, -79.87938213844397)', 10, 1, 3, 'https://upload.wikimedia.org/wikipedia/commons/6/69/Guayaquil_Malecon2000.JPG', 100);

-- Place 4
INSERT INTO public.place (
    id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
VALUES 
    (4, 'Las Peñas', 'Las Peñas es el barrio más antiguo de Guayaquil y cuenta con calles empedradas, coloridas casas coloniales y una atmósfera encantadora. En este barrio, también conocido como el Barrio de las Artes, encontrarás galerías de arte, talleres de artistas y pequeñas tiendas. Subir al faro en la cima de las Peñas te brindará una vista panorámica impresionante de la ciudad.', '555-456-123', 'La peñas, Guayaquil', '(-2.1809727356274324, -79.87564532460544)', 10, 1, 4, 'https://elcomercio.pe/resizer/sqxSyWJe1KSKHUDV21DdveL3ceg=/980x528/smart/filters:format(jpeg):quality(75)/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/KUXVSPHKIRGQ5ECYLXJA7PZT2Q.jpg', 100);

-- Place 5
INSERT INTO public.place (
    id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
VALUES 
    (5, 'Parque Seminario', 'Este parque céntrico es conocido popularmente como el "Parque de las Iguanas". Aquí, podrás admirar iguanas que deambulan libremente, así como disfrutar de la sombra proporcionada por los árboles y la arquitectura histórica circundante. El parque es un lugar relajante para dar un paseo y conectarse con la naturaleza en medio del bullicio urbano.', '3210-555-456', 'Rocafuerte Chimborazo, Guayaquil', '(-2.194696116537103, -79.88308437132255)', 10, 5, 5, 'https://live.staticflickr.com/65535/49265589756_6f5821eda1_c.jpg', 100);

-- Place 6
INSERT INTO public.place (
    id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
VALUES 
    (6, 'Mercado Artesanal', 'El Mercado Artesanal es un lugar ideal para explorar la rica artesanía ecuatoriana. Aquí encontrarás una amplia variedad de productos, desde textiles y joyería hasta cerámica y recuerdos tradicionales. Es un lugar perfecto para comprar souvenirs y apreciar la destreza artesanal de los artesanos locales.', '123-456-7890', 'Dr. Julian Coronel Oyarvide Centro, Guayaquil', '(-2.1965417181385334, -79.89241036848864)', 10, 1, 6, 'https://quitoen360.com/wp-content/uploads/2021/07/mercado-artesanal-quito.jpg', 100);

-- Place 7
INSERT INTO public.place (
    id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
VALUES 
    (7, 'Plaza Navona', 'Plaza Navona, un rincón encantador donde la comida deliciosa y la animada atmósfera se fusionan para crear una experiencia única. Esta plaza, ubicada en el corazón de la ciudad, es un punto de encuentro para los amantes de la buena comida y la convivencia.', '987-654-3210', 'Km 5. Vía a Samborondón. Plaza Navona.', '(-2.111653717359449, -79.87170548687594)', 22, 4, 7, 'https://www.eluniverso.com/resizer/yelH86zr9pjKv9KkoshN7jlyqf0=/800x450/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/4DVHLS2ZJZBPDMVO6TJR5YNFBE.jpg', 100);

-- Place 8
INSERT INTO public.place (
    id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
VALUES 
    (8, 'Plaza Lagos', 'Los habitantes de Samborondón ahora cuentan con un nuevo espacio para vivir una experiencia urbana diferente; tiendas, cafés y restaurantes todo situado alrededor de una amplia plaza que integra oficinas, locales comerciales y un complejo de apartamentos, que gracias a su diseño permitirá a los visitantes y residentes tener una experiencia memorable.', '3210-456-5555', 'Km 6.5 vía Puntilla - Samborondón.', '(-2.0978632090262734, -79.87444865585347)', 22, 9, 8, 'https://2.bp.blogspot.com/-CxZhAZVyQwE/VLbDTOgy2VI/AAAAAAAAADU/beo_HwJPkYg/s1600/2014-02-07%2B14.30.07.jpg', 100);

-- Place 9
INSERT INTO public.place (
    id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
VALUES 
    (9, 'Parque Lineal', 'El Parque Lineal La Madre es un espacio público que ofrece un ambiente natural y relajado. Este parque se extiende a lo largo de las orillas del río Milagro y proporciona áreas verdes, senderos para caminar y espacios para actividades recreativas. Es un lugar popular para que los residentes locales y visitantes disfruten de momentos al aire libre, ya sea dando un paseo tranquilo, haciendo ejercicio o simplemente disfrutando del entorno tranquilo.', '456-555-3210', 'Av. Pdte. Carlos Julio Arosemena Tola, Guayaquil', '(-2.1795408843971793, -79.9034828230175)', 14, 2, 9, 'https://live.staticflickr.com/6161/6180981025_b28c28d146_b.jpg', 100);

-- Place 10
INSERT INTO public.place (
    id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
VALUES 
    (10, 'Playas', 'Playas es uno de los lugares más famosas del Guayas, conocida por su amplia franja de arena dorada y aguas cristalinas. Ofrece una amplia gama de actividades acuáticas, así como una animada vida nocturna en sus alrededores. Es un destino popular para aquellos que buscan relajarse y disfrutar del clima cálido.', '555-3210-123', 'Av. Gral Villamil', '(-2.629393633965653, -80.39001625510427)', 20, 7, 10, 'https://www.dejandohuellahonduras.com/wp-content/uploads/2018/02/Mejores-playas-de-Honduras-Roatan-300x200.jpg', 100);

-- Place 11 

INSERT INTO public.place (
    id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
VALUES 
    (11, 'Parque Histórico', 'El Parque Histórico de Guayaquil es un parque recreativo con un espacio de vida silvestre y cultural que exhibe especies de flora y fauna de Guayaquil, además de casas antiguas de la zona urbana que fueron desmontadas de su ubicación original y reconstruidas en este lugar.', '+593 356 2673', 'Av. Rio Esmeraldas, Samborondón', '(-2.1442589564902024, -79.86916573941042)', 22, 5, 11, 'https://www.samborondon.gob.ec/wp-content/uploads/2019/12/parque-historico.jpg', 100);

-- Place 12

INSERT INTO public.place (
    id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
VALUES 
    (12, 'Puerto Santa Ana', 'Puerto Santa Ana es un complejo inmobiliario y turístico destinado para la clase alta y ubicado en la ciudad de Guayaquil, bajos las faldas del cerro Santa Ana. El complejo cuenta con varios edificios de oficinas, locales comerciales y departamentos, además de plazas, museos y un malecón que bordea al río Guayas.', '+593 356 2673', 'Av. Santa Ana, Guayaquil', '(-2.1796137837696494, -79.87523887198272)', 10, 4, 12, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/84/b3/f0/santa-ana-port.jpg?w=1200&h=-1&s=1', 100);

-- Place 13
INSERT INTO public.place (
    id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
VALUES 
    (13, 'Catedral Metropolitana', 'La Catedral Metropolitana de Guayaquil (oficialmente Catedral de San Pedro) es una catedral ecuatoriana ubicada en el corazón de Guayaquil, en el Parque Seminario. Originalmente fue construido en madera hacia 1547, en lo que entonces era la Plaza. El más grande de la ciudad, y reconstruido en hormigón armado en el siglo XX, en estilo neogótico.', '+593 356 2673', 'Ago y Ballén, Rocafuerte Chimborazo &, Guayaquil', '(-2.194665500284182, -79.8836765401625)', 10, 1, 13, 'https://www.eluniverso.com/resizer/2UH7-NxlOU8ONTwhs9BkAPc3zjs=/800x533/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/6RG7FFF4URGGFMG4YYW6GK2IPY.jpg', 100);

-- Place 14

INSERT INTO public.place (
    id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
VALUES 
    (14, 'La Perla', 'La Perla es una noria-mirador de 57 m situada sobre el extremo norte del Malecón 2000, en una plataforma sobre el río Guayas, a la altura de la intersección de la Avenida Malecón Simón Bolívar y la calle Julián Coronel, en el centro urbano de la ciudad de Guayaquil (Ecuador). La noria está junto al Centro Cultural Libertador Simón Bolívar y frente a las instalaciones de Cinema Malecón.', '+593 356 2673', 'Av. Malecon 2000, Guayaquil', '(-2.1856664231462513, -79.8764747308433)', 10, 2, 14, 'https://maleconinn.com/wp-content/uploads/2020/11/02open1guayaquil-26b7b2257da721914c2e7b8cd65a1404-800x400-1.jpg', 100);

-- Place 15

INSERT INTO public.place (
    id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
VALUES 
    (15, 'Iglesia San Francisco', 'La Iglesia de San Francisco, también conocida como Iglesia de Nuestra Señora de los Ángeles, es un templo católico de mayor relevancia dentro de la ciudad de Guayaquil. Fue creado en 1702 por parte de la Orden Franciscana establecida en la ciudad, la cual fue trasladada hacia la Ciudad Vieja a partir de 1693. Inicialmente fue construida de madera, sin embargo, tras los continuos incendios que sufrió Guayaquil, tuvo varias remodelaciones hasta obtener su estructura actual. Es el tercer templo católico más antiguo de la ciudad.', '+593 356 2673', 'Avenida Chile, Guayaquil', '(-2.18936181879753, -79.88896492893231)', 10, 1, 15, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/d1/57/c4/iglesia-san-francisco.jpg?w=1200&h=1200&s=1', 100);

-- Place 16

INSERT INTO public.place (
    id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
VALUES 
    (16, 'Estadio Banco Pichincha', 'El Estadio Monumental Isidro Romero Carbó, denominado oficialmente como Estadio Monumental Banco Pichincha por motivos de patrocinio, es un estadio de fútbol que se encuentra ubicado en la avenida Barcelona, entre el barrio San Eduardo y el barrio Bellavista, al oeste de la ciudad de Guayaquil, Ecuador. Es propiedad del Barcelona Sporting Club.', '+593 356 2673', 'Av. Barcelona, Guayaquil', '(-2.1859916054122963, -79.92490967578966)', 10, 9, 16, 'https://media.primicias.ec/2022/06/24163023/estadio_bsc_1.jpg', 100);

-- Place 17

INSERT INTO public.place (
    id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
VALUES 
    (17, 'Plaza Guayarte', 'Plaza Guayarte es una plaza de Guayaquil de contenido artístico y gastronómico, ubicada en la avenida Carlos Julio Arosemena, al final del Parque Lineal. Su enfoque es principalmente dar apertura a artistas urbanos y emprendedores para la realización de proyectos artísticos y de contenido cultural al aire libre.', '+593 356 2673', 'Av. Pdte. Carlos Julio Arosemena, Guayaquil', '(-2.1801202894884915, -79.90357970061189)', 10, 1, 17, 'https://www.guayaquil.gob.ec/wp-content/uploads/2023/06/Guayarte.jpg', 100);

-- Place 18

INSERT INTO public.place (
    id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
VALUES 
    (18, 'Hacienda La Danesa', 'Hacienda La Danesa es el lugar donde se logra reconectar con las cosas que realmente importan. Somos una hacienda familiar que produce chocolate, dulce de leche, miel y otros productos frescos de la granja que son hechos a mano desde el árbol hasta la barra. Es un espacio que fomenta la creatividad en todas sus formas. Se diseña y produce decoración.', '+593 356 2673', 'Autop. Naranjito Bucay, Naranjito', '(-2.143361059503124, -79.37749808241284)', 2, 9, 18, 'https://cloudfront-us-east-1.images.arcpublishing.com/eluniverso/5G2V6UBDBNGS5D6SXO76XREKKQ.jpg', 100);

-- Place 19

INSERT INTO public.place (
    id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
VALUES 
    (19, 'Mirador Bellavista', 'Cuspide donde se puede apreciar una vista muy completa de la ciudad de Guayaquil, en todas direcciones, se llega a pie a través de un sendero de aproximadamente 200 mts. desde donde se llega con vehiculo y se tiene una hermosa vista.', '+593 356 2673', 'Av. Barcelona, Guayaquil', '(-2.182740058325955, -79.91485077495098)', 10, 8, 19, 'https://cloudfront-us-east-1.images.arcpublishing.com/eluniverso/B4M4EQ2C6RDPVIEVDWMP53LKZQ.jpg', 100);

-- Place 20

INSERT INTO public.place (
    id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
VALUES 
    (20, 'Barco Morgan', 'Recorre arriba y abajo el Río Guayas a bordo de un barco pirata. Puedes verlo en el Malecón Simón Bolívar y se puede pasear por todo el malecón del Guayas.', '+593 356 2673', 'Av. Malecon 2000, Guayaquil', '(-2.1968594841329234, -79.88029862667229)', 10, 2, 20, 'https://gulliver.com.ec/wp-content/uploads/2017/03/morgan_1-11.jpg', 100);

-- Place 21

INSERT INTO public.place (
    id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
VALUES 
    (21, 'Palacio de Cristal', 'El Palacio de Cristal, también conocido como Mercado Sur, es una estructura de acero y cristal ubicada en la ciudad de Guayaquil. Actualmente funciona como un centro de exposiciones y convenciones, convirtiéndose en uno de los principales centros culturales de la ciudad y el país.', '+593 356 2673', 'Av. Malecon 2000, Guayaquil', '(-2.201982161740621, -79.88267777768696)', 10, 9, 21, 'https://upload.wikimedia.org/wikipedia/commons/9/9d/Palacio_de_cristal_7_7_2019_frontal.jpg', 100);

-- Place 22

INSERT INTO public.place (
    id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
VALUES 
    (22, 'Museo de la Música', 'Museo Municipal de música popular Julio Jaramillo es una institución cultural auspiciada y respaldada por la Municipalidad de Guayaquil, fue fundada el 1 de marzo de 2008, nombrada Julio Jaramillo en honor al principal cantante de música popular ecuatoriana.', '+593 356 2673', 'Av. Astillero, Numa Pompilio Llona 3, Guayaquil', '(-2.181524063571679, -79.87402515379893)', 10, 1, 22, 'https://maleconinn.com/wp-content/uploads/2021/08/museo-de-la-musica-popular-jj.jpeg', 100);

-- Place 23

INSERT INTO public.place (
    id, name, description, phone, address, "gpsCoordinates", "cantonId", "categoryId", "openingTimesId", thumbnail, points)
VALUES 
    (23, 'Shuar', 'Shuar es un balneario donde la serenidad se encuentra con la belleza natural. Rodeado de exuberante vegetación y aguas cristalinas, ofrece piscinas relajantes, tratamientos spa rejuvenecedores y una playa pintoresca para disfrutar del sol y la arena. Con servicios de primera clase y un ambiente tranquilo, el balneario Shuar es el destino ideal para escapar del estrés y revitalizar cuerpo y mente.', '+593 356 2673', 'Km. de la via Panamericana 8 Balao Chico, Guayaquil', '(-2.6666576645500184, -79.62132296474333)', 3, 8, 23, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/9a/c8/aa/i-love-it.jpg?w=1200&h=-1&s=1', 100);


-- Tomastur
INSERT INTO public.tour_operator(
    id, name, description, email, phone, facebook, instagram, twitter, "webSite", thumbnail)
VALUES
    (1, 'Tomastur', 'TOMASTUR Somos una compañía especializada en turismo receptivo y emisivo; que inicio sus actividades en la cuidad de Guayaquil, en enero del año 2003.', 'ventas@tomastur.com', '+593 997199550', 'https://m.facebook.com/p/Tomastur-100063620406989/', 'https://www.instagram.com/tomastur_sa/?hl=en', '-----','https://tomastur.com', 'https://tomastur.com/wp-content/uploads/2020/03/logo-tipo-tomastur-ecuador-2020.png');

-- Solcaribe
INSERT INTO public.tour_operator(
    id, name, description, email, phone, facebook, instagram, twitter, "webSite", thumbnail)
VALUES
    (2, 'Solcaribe', 'SOLCARIBE INTERNATIONAL TRAVEL AGENCY es una empresa con exitosa y productiva trayectoria, que cuenta con personal profesional altamente calificado, especializado en elaborar, desarrollar, operar y comercializar programas turísticos, con el fin de brindar excelente servicio, logrando satisfacer las necesidades del mercado.', 'ventas@solcaribe.com.ec', '04 6 033 777', 'https://www.facebook.com/Solcaribe.Viajes/?locale=es_LA', 'https://www.instagram.com/solcaribe_viajes/?hl=en', 'https://twitter.com/solcaribe?lang=en','https://solcaribe.com.ec/', 'https://img.solcaribe.ec/assets/images/agencia-viajes-ecuador.jpg');

-- BMTours
INSERT INTO public.tour_operator(
    id, name, description, email, phone, facebook, instagram, twitter, "webSite", thumbnail)
VALUES
    (3, 'BMTours', 'Bmtours es tu agencia de viajes online en Ecuador. Encuentra los mejores paquetes turísticos, vuelos, hoteles, cruceros y alquiler de autos al mejor precio.', 'web@bmtours.com.ec', '+593 93 980 2588', 'https://www.facebook.com/bmtoursec', 'https://www.instagram.com/bmtoursec/', 'https://twitter.com/bmtours?lang=es','abolanos@bmtours.com.ec', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/41/78/70/bm-tours-es-tiempo-de.jpg?w=1200&h=-1&s=1');

-- Destino Libre
INSERT INTO public.tour_operator(
    id, name, description, email, phone, facebook, instagram, twitter, "webSite", thumbnail)
VALUES
    (4, 'Destino Libre', 'Operadora de Turismo Especializado en Ecuador, viaja a donde desees.', 'operaciones@destinolibre.com.ec', '+593 99 817 5473', 'https://www.facebook.com/destinolibreec/?locale=es_LA', 'https://www.instagram.com/destinolibre/', '-----','www.destinolibre.com.ec', 'https://scontent.fgye30-1.fna.fbcdn.net/v/t39.30808-6/294931600_441937614612143_3343786944956267060_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=yN0QV160ImoAX9LUiYT&_nc_ht=scontent.fgye30-1.fna&oh=00_AfD18lctgFKPwzUi49j8OfrKKXbNq5NxUuLlOvQ5XAOuFQ&oe=65A41DD5');



INSERT INTO public."user"(
    id, "firstName", "lastName", email, password, points, username)
VALUES 
    ('918c0bf0-0130-4cb3-8cd8-a9903b5076ae', 'Javier', 'Vega', 'javier@gmail.com', '$2y$10$ZwHf11Dlj4OUPywfHS217O2HQbQB9R0F2WV4k2b4iGQCErWw55Hla', 0, 'javier'),
    ('5fd0caae-a66c-4079-a78d-b2f6009ee5de', 'Miguel', 'Parra', 'miguel@gmail.com', '$2y$10$H6MOMopc.cLqqJuVDD.9q.ui5LrPiEdl2cLstkYzonna7LGWLIxgq', 0, 'miguel');





-- Asociar lugar favorito al usuario Javier Vega
INSERT INTO public.favorite_place(id, "placeId", "userId") VALUES (uuid_generate_v4(), 1, '918c0bf0-0130-4cb3-8cd8-a9903b5076ae');

-- Asociar lugar favorito al usuario Miguel Parra
INSERT INTO public.favorite_place(id, "placeId", "userId") VALUES (uuid_generate_v4(), 2, '5fd0caae-a66c-4079-a78d-b2f6009ee5de');

-- Puedes continuar con otras asociaciones según sea necesario
-- Ejemplo: Asociar lugares adicionales al usuario Javier Vega
INSERT INTO public.favorite_place(id, "placeId", "userId") VALUES (uuid_generate_v4(), 3, '918c0bf0-0130-4cb3-8cd8-a9903b5076ae');
INSERT INTO public.favorite_place(id, "placeId", "userId") VALUES (uuid_generate_v4(), 4, '918c0bf0-0130-4cb3-8cd8-a9903b5076ae');
INSERT INTO public.favorite_place(id, "placeId", "userId") VALUES (uuid_generate_v4(), 5, '918c0bf0-0130-4cb3-8cd8-a9903b5076ae');
INSERT INTO public.favorite_place(id, "placeId", "userId") VALUES (uuid_generate_v4(), 6, '918c0bf0-0130-4cb3-8cd8-a9903b5076ae');

-- Asociar lugares adicionales al usuario Miguel Parra
INSERT INTO public.favorite_place(id, "placeId", "userId") VALUES (uuid_generate_v4(), 5, '5fd0caae-a66c-4079-a78d-b2f6009ee5de');
INSERT INTO public.favorite_place(id, "placeId", "userId") VALUES (uuid_generate_v4(), 6, '5fd0caae-a66c-4079-a78d-b2f6009ee5de');



-- Fiesta de la Virgen del Carmen en Guayaquil
INSERT INTO public.event(
	id, name, description, phone, address, "gpsCoordinates", "cantonId", facebook, instagram, twitter, tiktok, "webSite", thumbnail)
	VALUES (1, 'Fiesta de la Virgen del Carmen', 'Una celebración religiosa y cultural que se realiza cada 16 de julio en honor a la Virgen del Carmen, patrona de los pescadores y marineros. Se realizan procesiones, misas, bailes y juegos pirotécnicos.', '04-256-7890', 'Barrio Las Peñas, Guayaquil', '-2.189412, -79.883558', 1, 'https://www.facebook.com/fiestavirgendelcarmen/', 'https://www.instagram.com/fiestavirgendelcarmen/', 'https://twitter.com/fiestavirgendelcarmen/', 'https://www.tiktok.com/@fiestavirgendelcarmen', 'https://www.goraymi.com/es-ec/guayas/guayaquil/fiestas/fiesta-de-la-virgen-del-carmen-avgpvvedq', 'https://i0.wp.com/tengoseddeti.org/wp-content/uploads/2019/07/salutacionesvirgendelcarmen_blog.jpg?fit=795%2C551&ssl=1');

-- Carnaval Guayaquil 2024
INSERT INTO public.event(
	id, name, description, phone, address, "gpsCoordinates", "cantonId", facebook, instagram, twitter, tiktok, "webSite", thumbnail)
	VALUES (2, 'Carnaval Guayaquil 2024', 'Un evento que se celebra cada año en el mes de febrero, con desfiles, conciertos, ferias, exposiciones y mucha diversión. El carnaval de Guayaquil es uno de los más grandes y coloridos del país.', '04-234-5678', 'Malecón 2000, Guayaquil', '-2.196160, -79.886207', 1, 'https://www.facebook.com/carnavalguayaquil/', 'https://www.instagram.com/carnavalguayaquil/', 'https://twitter.com/carnavalguayaquil/', 'https://www.tiktok.com/@carnavalguayaquil', 'https://www.guayaquilesmidestino.com/es/eventos/carnaval-guayaquil-2017', 'https://3.bp.blogspot.com/-CAfdO7eh8HM/VMlUA52_U8I/AAAAAAAAPTU/tdhu3XVOpgM/s1600/Programa%2Bde%2Bfiestas%2BCarnaval%2BGuayaquil%2B2015.jpg');

-- Festival de la Fruta en Pedro Carbo
INSERT INTO public.event(
	id, name, description, phone, address, "gpsCoordinates", "cantonId", facebook, instagram, twitter, tiktok, "webSite", thumbnail)
	VALUES (3, 'Festival de la Fruta', 'Un evento que se realiza cada año en el mes de agosto, para promover la producción y el consumo de frutas tropicales como el mango, la papaya, el maracuyá y el coco. Se realizan concursos, exposiciones, degustaciones y venta de productos derivados de las frutas.', '04-276-5432', 'Parque Central, Pedro Carbo', '-1.833333, -80.233333', 3, 'https://www.facebook.com/festivaldelafruta/', 'https://www.instagram.com/festivaldelafruta/', 'https://twitter.com/festivaldelafruta/', 'https://www.tiktok.com/@festivaldelafruta', 'https://www.goraymi.com/es-ec/guayas/pedro-carbo/fiestas/festival-de-la-fruta-avgpvvedq', 'https://static.wixstatic.com/media/935275_f83f66bceb29484b9ff76a88bfe33f43~mv2.jpg/v1/fill/w_770,h_500,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/FIESTA%20PATRONAL%202.jpg');

-- Festival de Arte Urbano
INSERT INTO public.event(
	id, name, description, phone, address, "gpsCoordinates", "cantonId", facebook, instagram, twitter, tiktok, "webSite", thumbnail)
    VALUES (4, 'Festival de Arte Urbano', 'Disfruta de un evento que celebra la creatividad urbana con murales, grafitis, música en vivo y actividades interactivas para todas las edades.', '04-222-4567', 'Malecón Simón Bolívar, Guayaquil', '-2.1968594841329234, -79.88029862667229', 10, 'https://www.facebook.com/festivalarteurbano/', 'https://www.instagram.com/festivalarteurbano/', 'https://twitter.com/arteurbano_ec', 'https://www.tiktok.com/@arteurbano', 'https://www.festivaldearteurbano.ec/', 'https://www.eluniverso.com/resizer/vkweI-5jsYm0o2zB6_FPbPnCNhc=/1005x670/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/MKTZLZQXQ5FJPP4S4MXLMM4KQY.jpg');

-- Feria Gastronómica Sabores de Guayaquil
INSERT INTO public.event(
	id, name, description, phone, address, "gpsCoordinates", "cantonId", facebook, instagram, twitter, tiktok, "webSite", thumbnail)
    VALUES (5, 'Feria Gastronómica Sabores de Guayaquil', 'Descubre la riqueza culinaria de Guayaquil con una feria que reúne a los mejores chefs y restaurantes de la ciudad. Prueba platos tradicionales y experimenta nuevos sabores.', '04-333-6789', 'Parque Centenario, Guayaquil', '-2.205014, -79.897697', 10, 'https://www.facebook.com/feriagastronomica/', 'https://www.instagram.com/saboresdeguayaquil/', 'https://twitter.com/sabores_gye', 'https://www.tiktok.com/@saboresdeguayaquil', 'https://www.saboresdeguayaquil.com/', 'https://www.inmobiliar.gob.ec/wp-content/uploads/2021/09/57fd19eb-01a8-40aa-bf34-a51b99c47014.jpeg');

-- Concierto en el Parque Seminario
INSERT INTO public.event(
	id, name, description, phone, address, "gpsCoordinates", "cantonId", facebook, instagram, twitter, tiktok, "webSite", thumbnail)
    VALUES (6, 'Concierto en el Parque Seminario', 'Vive una noche llena de música con un concierto al aire libre en el Parque Seminario. Artistas locales te harán vibrar con diferentes géneros musicales.', '04-234-5678', 'Parque Seminario, Guayaquil', '-2.194665500284182, -79.8836765401625', 10, 'https://www.facebook.com/conciertoparqueseminario/', 'https://www.instagram.com/conciertoparqueseminario/', 'https://twitter.com/conciertogye', 'https://www.tiktok.com/@conciertoparqueseminario', 'https://www.conciertoparqueseminario.ec/', 'https://www.eluniverso.com/resizer/l-uFFmuxYFPxRNuZQOtb9DNkt1Q=/1013x670/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/RGAF2ZH7UBFWVFZHWYPRD6A6YQ.png');

-- Exposición de Arte Contemporáneo
INSERT INTO public.event(
	id, name, description, phone, address, "gpsCoordinates", "cantonId", facebook, instagram, twitter, tiktok, "webSite", thumbnail)
    VALUES (7, 'Exposición de Arte Contemporáneo', 'Explora la creatividad de artistas contemporáneos en una exposición única. Pinturas, esculturas y nuevas formas de expresión te esperan en este evento cultural.', '04-345-6789', 'Centro de Convenciones de Guayaquil', '-2.203272, -79.897349', 10, 'https://www.facebook.com/expoartecontemporaneo/', 'https://www.instagram.com/artecontemporaneogye/', 'https://twitter.com/artecont_gye', 'https://www.tiktok.com/@artecontemporaneo', 'https://www.expoartecontemporaneo.com/', 'https://arteaunclick.es/wp-content/uploads/2018/05/Ana-Laura-Aláez_Mujeres-sobre-zapatos-de-plataforma-28199229.jpg');

-- Festival de Cine Independiente
INSERT INTO public.event(
	id, name, description, phone, address, "gpsCoordinates", "cantonId", facebook, instagram, twitter, tiktok, "webSite", thumbnail)
    VALUES (8, 'Festival de Cine Independiente', 'Sumérgete en el mundo del cine independiente con proyecciones de películas únicas y la oportunidad de interactuar con directores y actores. Una experiencia cinematográfica diferente.', '04-456-7890', 'Cinepolis, Mall del Sol, Guayaquil', '-2.168504, -79.915477', 10, 'https://www.facebook.com/festivalcineindependiente/', 'https://www.instagram.com/cineindependientegye/', 'https://twitter.com/festcinegye', 'https://www.tiktok.com/@cineindependientegye', 'https://www.festivalcineindependiente.ec/', 'https://i0.wp.com/www.eluniverso.com/resizer/nmPKkjosaxfYPwXdmTSYO_1AUtc=/1190x670/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/XCNMN2QUWNFCXPOOKOEXDKMJMU.jpeg?w=696&ssl=1');

-- Exhibición de Autos Clásicos
INSERT INTO public.event(
	id, name, description, phone, address, "gpsCoordinates", "cantonId", facebook, instagram, twitter, tiktok, "webSite", thumbnail)
    VALUES (9, 'Exhibición de Autos Clásicos', 'Admira la elegancia y el diseño atemporal de autos clásicos en esta exhibición anual. Una oportunidad única para los amantes de los automóviles y la historia del motor.', '04-567-8901', 'Parque Histórico, Samborondón', '-2.1442589564902024, -79.86916573941042', 22, 'https://www.facebook.com/exhibicionautosclasicos/', 'https://www.instagram.com/autosclasicosgye/', 'https://twitter.com/clasicosgye', 'https://www.tiktok.com/@autosclasicosgye', 'https://www.exhibicionautosclasicos.com/', 'https://www.lahora.com.ec/wp-content/uploads/2023/02/autos-clasicos.jpg');


-- Puedes continuar con otras asociaciones según sea necesario
-- Ejemplo: Asociar eventos adicionales al usuario Javier Vega
INSERT INTO public.favorite_event(id, "eventId", "userId") VALUES (uuid_generate_v4(), 1, '918c0bf0-0130-4cb3-8cd8-a9903b5076ae');
INSERT INTO public.favorite_event(id, "eventId", "userId") VALUES (uuid_generate_v4(), 2, '918c0bf0-0130-4cb3-8cd8-a9903b5076ae');
INSERT INTO public.favorite_event(id, "eventId", "userId") VALUES (uuid_generate_v4(), 3, '918c0bf0-0130-4cb3-8cd8-a9903b5076ae');

-- Asociar eventos adicionales al usuario Miguel Parra
INSERT INTO public.favorite_event(id, "eventId", "userId") VALUES (uuid_generate_v4(), 1, '5fd0caae-a66c-4079-a78d-b2f6009ee5de');
INSERT INTO public.favorite_event(id, "eventId", "userId") VALUES (uuid_generate_v4(), 3, '5fd0caae-a66c-4079-a78d-b2f6009ee5de');



-- Para el primer conjunto de imágenes (placeId: 1)
INSERT INTO public.place_photo(id, "imageName", "placeId") VALUES
(1, 'https://www.eluniverso.com/resizer/sJ2CCHTgSj1Zq03cGyDnigHOl6g=/893x670/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/4KBLEU6CS5FILN7MYFS2GPZJUU.jpeg', 1),
(2, 'https://i.pinimg.com/736x/2c/8e/e6/2c8ee69c0f4fa77d8c60f180ffd7d613.jpg', 1),
(3, 'https://www.ecuavisa.com/binrepository/1024x576/0c0/0d0/none/11705/BXXD/vlcsnap-2015-10-22-10h52m59s191_EC120440_MG272999.png', 1);

-- Para el segundo conjunto de imágenes (placeId: 2)
INSERT INTO public.place_photo(id, "imageName", "placeId") VALUES
(4, 'https://img.goraymi.com/2018/06/21/b60b922f56ef1ef8d1db8ef5c9e8f261_xl.jpg', 2),
(5, 'https://i.pinimg.com/originals/1b/dd/49/1bdd4924094807b6739959141d650746.jpg', 2),
(6, 'https://www.eluniverso.com/resizer/xQKdFiwbrcuiofRrpmZehKzrI5Q=/1198x670/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/KZ577Y3BZBBKJBYENJNTBDJPCE.jpg', 2);

-- Para el tercer conjunto de imágenes (placeId: 7)
INSERT INTO public.place_photo(id, "imageName", "placeId") VALUES
(7, 'https://www.plazanavona.com/wp-content/uploads/2018/03/Plaza-Navaona-01.jpg', 7),
(8, 'https://www.plazanavona.com/wp-content/uploads/2018/03/Plaza-Navaona-02.jpg', 7),
(9, 'https://media-cdn.tripadvisor.com/media/photo-s/18/7c/13/12/hermoso-juego-de-luces.jpg', 7);

-- Para el tercer conjunto de imágenes (placeId: 11)
INSERT INTO public.place_photo(id, "imageName", "placeId") VALUES
(10, 'https://www.samborondon.gob.ec/wp-content/uploads/2019/12/parque-historico.jpg', 11),
(11, 'https://upload.wikimedia.org/wikipedia/commons/6/6a/Parque_Hist%C3%B3rico_Guayaquil_-_Banco_Territorial.JPG', 11),
(12, 'https://img.goraymi.com/2016/04/29/e41221b7fa29f6e3da887da9151d998c_xl.jpg', 11);

-- Agrega las nuevas imágenes para el placeId 12
INSERT INTO public.place_photo(id, "imageName", "placeId") VALUES
(13, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/84/b3/f0/santa-ana-port.jpg?w=1200&h=-1&s=1', 12),
(14, 'https://www.turisec.com/wp-content/uploads/2022/10/the-point1.jpg', 12),
(15, 'https://realtyonegroupecuador.com.ec/wp-content/uploads/2023/06/ac2d9db0de57b23e81b33dcc8ad1b71e.jpeg', 12);

-- Agrega las nuevas imágenes para el placeId 13
INSERT INTO public.place_photo(id, "imageName", "placeId") VALUES
(16, 'https://www.eluniverso.com/resizer/2UH7-NxlOU8ONTwhs9BkAPc3zjs=/800x533/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/6RG7FFF4URGGFMG4YYW6GK2IPY.jpg', 13),
(17, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/84/af/1e/catedral-metropolitana.jpg?w=1200&h=1200&s=1', 13),
(18, 'https://pbs.twimg.com/media/C-DV__SVYAEBu42.jpg', 13);

-- Agrega las nuevas imágenes para el placeId 14
INSERT INTO public.place_photo(id, "imageName", "placeId") VALUES
(19, 'https://maleconinn.com/wp-content/uploads/2020/11/02open1guayaquil-26b7b2257da721914c2e7b8cd65a1404-800x400-1.jpg', 14),
(20, 'https://i.pinimg.com/originals/2a/ab/e4/2aabe4e2c3eb1b234f5ebbadf8902e4c.jpg', 14),
(21, 'https://ec.viajandox.com/uploads/attractive_467.jpg', 14);

-- Agrega las nuevas imágenes para el placeId 15
INSERT INTO public.place_photo(id, "imageName", "placeId") VALUES
(22, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/d1/57/c4/iglesia-san-francisco.jpg?w=1200&h=1200&s=1', 15),
(23, 'https://trailforthjournal.com/es/wp-content/uploads/sites/4/2023/10/DJI_0025-2-scaled.jpg', 15),
(24, 'https://www.eluniverso.com/resizer/mEjY5J-Q9Q3Ae0WyZiBTW-JrC6Q=/1046x670/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/CVPXO5O6P5BHRAPXVBCZZBU6WE.jpg', 15);

-- Agrega las nuevas imágenes para el placeId 16
INSERT INTO public.place_photo(id, "imageName", "placeId") VALUES
(25, 'https://media.primicias.ec/2022/06/24163023/estadio_bsc_1.jpg', 16),
(26, 'https://media.primicias.ec/2022/10/14133707/estadio-banco-pichincha-drone.jpg', 16),
(27, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/56/1d/50/estadio-banco-pichincha.jpg?w=1200&h=-1&s=1', 16);

-- Agrega las nuevas imágenes para el placeId 17
INSERT INTO public.place_photo(id, "imageName", "placeId") VALUES
(28, 'https://www.guayaquil.gob.ec/wp-content/uploads/2023/06/Guayarte.jpg', 17),
(29, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/e8/e3/a2/plaza-guayarte.jpg?w=1200&h=-1&s=1', 17),
(30, 'https://www.clave.com.ec/wp-content/uploads/2019/03/IMG_4157.jpg', 17);

-- Agrega las nuevas imágenes para el placeId 18
INSERT INTO public.place_photo(id, "imageName", "placeId") VALUES
(31, 'https://cloudfront-us-east-1.images.arcpublishing.com/eluniverso/5G2V6UBDBNGS5D6SXO76XREKKQ.jpg', 18),
(32, 'https://www.surtrek.com/es/images/contents/ecuador/guayaquil/hacienda-danesa-1200x600.jpg', 18),
(33, 'https://www.surtrek.com/es/images/contents/ecuador/guayaquil/hacienda-danesa-porch-1200x600.jpg', 18);

-- Agrega las nuevas imágenes para el placeId 19
INSERT INTO public.place_photo(id, "imageName", "placeId") VALUES
(34, 'https://cloudfront-us-east-1.images.arcpublishing.com/eluniverso/B4M4EQ2C6RDPVIEVDWMP53LKZQ.jpg', 19),
(35, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/b3/f4/c5/mirador-bellavista.jpg?w=1200&h=-1&s=1', 19),
(36, 'https://mediaim.expedia.com/destination/1/de36e92aa1599c96ee252e820af1d920.jpg', 19);

-- Agrega las nuevas imágenes para el placeId 20
INSERT INTO public.place_photo(id, "imageName", "placeId") VALUES
(37, 'https://gulliver.com.ec/wp-content/uploads/2017/03/morgan_1-11.jpg', 20),
(38, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/17/c9/d1/captain-morgan-s-pirate.jpg?w=1200&h=-1&s=1', 20),
(39, 'https://media.tacdn.com/media/attractions-splice-spp-674x446/06/96/72/7a.jpg', 20);

-- Agrega las nuevas imágenes para el placeId 21
INSERT INTO public.place_photo(id, "imageName", "placeId") VALUES
(40, 'https://upload.wikimedia.org/wikipedia/commons/9/9d/Palacio_de_cristal_7_7_2019_frontal.jpg', 21),
(41, 'https://eventosecuador.com/wp-content/uploads/2021/12/PALACIO-DE-CRISTAL-1.jpg', 21),
(42, 'https://ec.viajandox.com/uploads/Palacio%20de%20Cristal%20_1.jpg', 21);

-- Agrega las nuevas imágenes para el placeId 22
INSERT INTO public.place_photo(id, "imageName", "placeId") VALUES
(43, 'https://maleconinn.com/wp-content/uploads/2021/08/museo-de-la-musica-popular-jj.jpeg', 22),
(44, 'https://ec.viajandox.com/uploads/min_attractive_3126.jpg', 22),
(45, 'https://cloudfront-us-east-1.images.arcpublishing.com/eluniverso/45MXMNE3MZBW3JFT2G3KXYT6FE.jpg', 22);

-- Agrega las nuevas imágenes para el placeId 23
INSERT INTO public.place_photo(id, "imageName", "placeId") VALUES
(46, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/9a/c8/aa/i-love-it.jpg?w=1200&h=-1&s=1', 23),
(47, 'https://www.eluniverso.com/resizer/Y8MjA8h3T-8g27fxhC56-UTXHtk=/1005x670/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/Q623T256HVHW7JZPFXDFWTW7JY.jpg', 23),
(48, 'https://i.ytimg.com/vi/cg_8zI0st74/maxresdefault.jpg', 23);

-- Agrega las nuevas imágenes para el placeId 3
INSERT INTO public.place_photo(id, "imageName", "placeId") VALUES
(49, 'https://upload.wikimedia.org/wikipedia/commons/6/69/Guayaquil_Malecon2000.JPG', 3),
(50, 'https://www.turisec.com/wp-content/uploads/2023/02/MALECON-2000-1.jpg', 3),
(51, 'https://www.hoteldelparquehistorico.com/wp-content/uploads/2021/11/guayaquil-boardwalk-wheel.jpg', 3);

-- Agrega las nuevas imágenes para el placeId 4
INSERT INTO public.place_photo(id, "imageName", "placeId") VALUES
(52, 'https://elcomercio.pe/resizer/sqxSyWJe1KSKHUDV21DdveL3ceg=/980x528/smart/filters:format(jpeg):quality(75)/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/KUXVSPHKIRGQ5ECYLXJA7PZT2Q.jpg', 4),
(53, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/2b/85/95/photo0jpg.jpg?w=1200&h=-1&s=1', 4),
(54, 'https://imagenes.expreso.ec/files/image_700_402/uploads/2023/05/20/6469522dc00b8.jpeg', 4);

-- Agrega las nuevas imágenes para el placeId 5
INSERT INTO public.place_photo(id, "imageName", "placeId") VALUES
(55, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/fc/ae/e4/facing-the-church.jpg?w=1200&h=-1&s=1', 5),
(56, 'https://www.eluniverso.com/resizer/Cp6-9zy0jabPXlltKjuMu_rrFUA=/1145x670/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/LDSAVHCR6JD3FK2OPSGVF3IBFQ.jpg', 5),
(57, 'https://soyguayaco.com/wp-content/uploads/2021/12/Parque-seminario-Guayaquil.jpg', 5);

-- Agrega las nuevas imágenes para el placeId 6
INSERT INTO public.place_photo(id, "imageName", "placeId") VALUES
(58, 'https://www.turisec.com/wp-content/uploads/2022/10/ARTESANIAS-GYQ.jpg', 6),
(59, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/3f/95/27/mercado-artesanal.jpg?w=1200&h=1200&s=1', 6),
(60, 'https://todoaki.com/wp-content/uploads/10501863_730439063684489_3552425087131311785_n102.jpg', 6);

-- Agrega las nuevas imágenes para el placeId 8
INSERT INTO public.place_photo(id, "imageName", "placeId") VALUES
(61, 'https://media-cdn.tripadvisor.com/media/photo-s/0b/c5/65/f4/best-place-for-eating.jpg', 8),
(62, 'https://www.clave.com.ec/wp-content/uploads/2016/05/MG_68671.jpg', 8),
(63, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/f0/14/f6/add-a-caption.jpg?w=1200&h=-1&s=1', 8);

-- Agrega las nuevas imágenes para el placeId 9
INSERT INTO public.place_photo(id, "imageName", "placeId") VALUES
(64, 'https://www.ecuavisa.com/binrepository/1024x683/0c42/1024d600/none/11705/YRDC/parques_y_areas_naturales-118_cj_gonzalez_EC246051_MG788134.jpg', 9),
(65, 'https://www.eluniverso.com/resizer/rDPhlpkx8r22hiAb27PmXRYvq90=/734x494/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/L6NB4U6L7RD3LH7PLEK62MFP7U.jpg', 9),
(66, 'https://m.miqr.ec/gye/parques/lineal/images/foto01.jpg', 9);

-- Agrega las nuevas imágenes para el placeId 10
INSERT INTO public.place_photo(id, "imageName", "placeId") VALUES
(67, 'https://img.goraymi.com/2021/01/25/5ffc1655e79c907b332556fc3789cd3e_xl.jpg', 10),
(68, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/89/4c/69/salinas.jpg?w=500&h=-1&s=1', 10),
(69, 'https://www.elcomercio.com/wp-content/uploads/2021/08/salinas.jpg', 10);






-- Para el primer conjunto de imágenes (eventId: 1)
INSERT INTO public.event_photo(id, "imageName", "eventId") VALUES
(1, 'https://thumbs.dreamstime.com/b/coloridas-casas-las-penas-guayaquil-ecuador-punto-de-referencia-en-el-distrito-santa-anna-hill-sudamérica-189680049.jpg', 1),
(2, 'https://www.ecuador.com/wp-content/uploads/2021/08/Guayaquil-tour-mainland-gbt-0.jpg', 1),
(3, 'https://www.fossil.com.ec/wp-content/uploads/2021/10/GUAYAQUIL-ECUADOR.jpg', 1);

-- Para el segundo conjunto de imágenes (eventId: 2)
INSERT INTO public.event_photo(id, "imageName", "eventId") VALUES
(4, 'https://radiomorena640.com/wp-content/uploads/2023/07/Guayarte01.jpg', 2),
(5, 'https://www.ecuanoticias.com/wp-content/uploads/2023/06/guayarte.jpg', 2),
(6, 'https://www.eloficial.ec/wp-content/uploads/2018/07/GUAYARTE-1-1024x571.jpg', 2);


-- Para el tercer conjunto de imágenes (eventId: 3)
INSERT INTO public.event_photo(id, "imageName", "eventId") VALUES
(7, 'https://radiomorena640.com/wp-content/uploads/2023/07/Guayarte01.jpg', 3),
(8, 'https://www.ecuanoticias.com/wp-content/uploads/2023/06/guayarte.jpg', 3),
(9, 'https://www.eloficial.ec/wp-content/uploads/2018/07/GUAYARTE-1-1024x571.jpg', 3);

-- Para el tercer conjunto de imágenes (eventId: 4)
INSERT INTO public.event_photo(id, "imageName", "eventId") VALUES
(13, 'https://www.eluniverso.com/resizer/vkweI-5jsYm0o2zB6_FPbPnCNhc=/1005x670/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/MKTZLZQXQ5FJPP4S4MXLMM4KQY.jpg', 4),
(14, 'https://www.larepublica.ec/wp-content/uploads/2017/11/GUAYARTE-678x381.jpg', 4),
(15, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVzijiGXO7dCR8CQn9DRxCmQiOIIHABU5oZsiMBDo701ECTEkji1dK9qv1_G_uzTM2HRU&usqp=CAU', 4);

-- Para el quinto conjunto de imágenes (eventId: 5)
INSERT INTO public.event_photo(id, "imageName", "eventId") VALUES
(16, 'https://www.inmobiliar.gob.ec/wp-content/uploads/2021/09/57fd19eb-01a8-40aa-bf34-a51b99c47014.jpeg', 5),
(17, 'https://www.guayaquil.gob.ec/wp-content/uploads/2023/10/festival-gastronomico-realizo-mercado-artesanal-guayaquil2.jpg', 5),
(18, 'https://www.vistazo.com/binrepository/768x513/0c41/768d432/none/12727/QLPE/raices_4_VI188191_MG8562186.jpg', 5);

-- Para el evento con id 6
INSERT INTO public.event_photo(id, "imageName", "eventId") VALUES
(19, 'https://www.eluniverso.com/resizer/l-uFFmuxYFPxRNuZQOtb9DNkt1Q=/1013x670/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/RGAF2ZH7UBFWVFZHWYPRD6A6YQ.png', 6),
(20, 'https://www.eluniverso.com/resizer/0UWfSf97WOj7sdK8NBVYZwjW9A8=/653x400/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/NDBJQBLDEZHRDHDTMZHMVWPWUM.jpg', 6),
(21, 'https://www.eluniverso.com/resizer/S8VqDlAn7yNiiIjP3Mwc_eF2fgw=/800x499/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/6YUIJ3IRV5FG3J3KCDL6KFOAS4.jpg', 6);

-- Para el evento con id 7
INSERT INTO public.event_photo(id, "imageName", "eventId") VALUES
(22, 'https://arteaunclick.es/wp-content/uploads/2018/05/Ana-Laura-Aláez_Mujeres-sobre-zapatos-de-plataforma-28199229.jpg', 7),
(23, 'https://fundacionmuseosquito.gob.ec/wp-content/uploads/2023/01/CAC_Shuk-Makilla-ajus-1.jpg', 7),
(24, 'https://www.fundaciontelefonica.com/wp-content/uploads/2023/07/DSC01635-1536x1024.webp', 7);

-- Para el evento con id 8
INSERT INTO public.event_photo(id, "imageName", "eventId") VALUES
(25, 'https://i0.wp.com/www.eluniverso.com/resizer/nmPKkjosaxfYPwXdmTSYO_1AUtc=/1190x670/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/XCNMN2QUWNFCXPOOKOEXDKMJMU.jpeg?w=696&ssl=1', 8),
(26, 'https://www.eluniverso.com/resizer/vgnV4LgEz-yFHW9xe5gjpirnPdI=/903x670/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/X2TBUEH7QJABPNPVB6KRXGRJCU.jpeg', 8),
(27, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXbfJ8O0RsPiA7HtBuIrZAB6AjMgfVJeFL40bQyfDRKyaIlJA8az5uhONUj_q4Zsq8NeI&usqp=CAU', 8);

-- Para el evento con id 9
INSERT INTO public.event_photo(id, "imageName", "eventId") VALUES
(28, 'https://www.lahora.com.ec/wp-content/uploads/2023/02/autos-clasicos.jpg', 9),
(29, 'https://www.loja.gob.ec/files/noticias/2017/11/clasicos.png', 9),
(30, 'https://www.opinion.com.bo/asset/thumbnail,992,558,center,center/media/opinion/images/2023/02/04/2023020410094013494.jpg', 9);


-- Para el primer conjunto de imágenes (tourOperatorId: 1)
INSERT INTO public.tour_operator_photo(id, "imageName", "tourOperatorId") VALUES
(1, 'https://db3paky6dzm2s.cloudfront.net/Pictures/480x270/4/3/4/21434_bgsdavidhaygarth_807566_crop.jpg', 1),
(2, 'https://media.cntraveler.com/photos/5dfbb8920d758c000820004d/16:9/w_2560%2Cc_limit/Quark-Expeditions_Ocean-Adventurer_OAD_paradise_harbour_acaciajohnson.jpg', 1),
(3, 'https://images.ctfassets.net/iugkuus37ftr/62iW3s8YRU6aCKGu8Si8Go/bffb0e52917c69f2870ca7f8cb03ec00/trackers-expeditions-location-banner.jpg?w=1200&h=600&fit=fill&f=bottom', 1);

-- Para el primer conjunto de imágenes (tourOperatorId: 2)
INSERT INTO public.tour_operator_photo(id, "imageName", "tourOperatorId") VALUES
(4, 'https://db3paky6dzm2s.cloudfront.net/Pictures/480x270/4/3/4/21434_bgsdavidhaygarth_807566_crop.jpg', 2),
(5, 'https://media.cntraveler.com/photos/5dfbb8920d758c000820004d/16:9/w_2560%2Cc_limit/Quark-Expeditions_Ocean-Adventurer_OAD_paradise_harbour_acaciajohnson.jpg', 2),
(6, 'https://images.ctfassets.net/iugkuus37ftr/62iW3s8YRU6aCKGu8Si8Go/bffb0e52917c69f2870ca7f8cb03ec00/trackers-expeditions-location-banner.jpg?w=1200&h=600&fit=fill&f=bottom', 2);

-- Para el primer conjunto de imágenes (tourOperatorId: 3)
INSERT INTO public.tour_operator_photo(id, "imageName", "tourOperatorId") VALUES
(7, 'https://db3paky6dzm2s.cloudfront.net/Pictures/480x270/4/3/4/21434_bgsdavidhaygarth_807566_crop.jpg', 3),
(8, 'https://media.cntraveler.com/photos/5dfbb8920d758c000820004d/16:9/w_2560%2Cc_limit/Quark-Expeditions_Ocean-Adventurer_OAD_paradise_harbour_acaciajohnson.jpg', 3),
(9, 'https://images.ctfassets.net/iugkuus37ftr/62iW3s8YRU6aCKGu8Si8Go/bffb0e52917c69f2870ca7f8cb03ec00/trackers-expeditions-location-banner.jpg?w=1200&h=600&fit=fill&f=bottom', 3);

-- Para el primer conjunto de imágenes (tourOperatorId: 4)
INSERT INTO public.tour_operator_photo(id, "imageName", "tourOperatorId") VALUES
(10, 'https://db3paky6dzm2s.cloudfront.net/Pictures/480x270/4/3/4/21434_bgsdavidhaygarth_807566_crop.jpg', 4),
(11, 'https://media.cntraveler.com/photos/5dfbb8920d758c000820004d/16:9/w_2560%2Cc_limit/Quark-Expeditions_Ocean-Adventurer_OAD_paradise_harbour_acaciajohnson.jpg', 4),
(12, 'https://images.ctfassets.net/iugkuus37ftr/62iW3s8YRU6aCKGu8Si8Go/bffb0e52917c69f2870ca7f8cb03ec00/trackers-expeditions-location-banner.jpg?w=1200&h=600&fit=fill&f=bottom', 4);


-- Agrega nuevas reseñas para los placeId 1, 2, 7 y 10
INSERT INTO public.place_review(id, stars, comment, "placeId", "userId", "createdAt", "updatedAt") VALUES (uuid_generate_v4(), 5, 'Tuve una experiencia maravillosa en este lugar. La atención al cliente fue excepcional, y la ambientación del lugar creó un ambiente relajante y acogedor. Definitivamente lo recomendaría a mis amigos y familiares.', 1, '918c0bf0-0130-4cb3-8cd8-a9903b5076ae', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO public.place_review(id, stars, comment, "placeId", "userId", "createdAt", "updatedAt") VALUES (uuid_generate_v4(), 2, 'No quedé completamente satisfecho con mi visita. Aunque el lugar tiene un encanto único, noté algunos aspectos que podrían mejorarse, especialmente en términos de limpieza. Espero que tomen en cuenta estos comentarios para futuras mejoras.', 1, '918c0bf0-0130-4cb3-8cd8-a9903b5076ae', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO public.place_review(id, stars, comment, "placeId", "userId", "createdAt", "updatedAt") VALUES (uuid_generate_v4(), 4, 'La experiencia fue bastante agradable. Disfruté de la comida y la atención del personal. Sin embargo, creo que podrían agregar algunas opciones más al menú para atraer a un público más amplio. En general, tuve un buen momento y planeo regresar.', 1, '918c0bf0-0130-4cb3-8cd8-a9903b5076ae', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO public.place_review(id, stars, comment, "placeId", "userId", "createdAt", "updatedAt") VALUES (uuid_generate_v4(), 4, 'Visité este lugar con mis amigos y todos estábamos encantados con la experiencia. La calidad de los servicios superó nuestras expectativas, y el ambiente general fue acogedor. Definitivamente, un lugar para volver.', 1, '918c0bf0-0130-4cb3-8cd8-a9903b5076ae', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO public.place_review(id, stars, comment, "placeId", "userId", "createdAt", "updatedAt") VALUES (uuid_generate_v4(), 5, 'Este lugar tiene un encanto único. La atención al cliente es destacada, y la calidad de los productos es evidente. Recomiendo probar sus especialidades, realmente te transportan a otro nivel de disfrute culinario.', 1, '918c0bf0-0130-4cb3-8cd8-a9903b5076ae', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO public.place_review(id, stars, comment, "placeId", "userId", "createdAt", "updatedAt") VALUES (uuid_generate_v4(), 4, 'Mi experiencia en este lugar fue positiva en general. Disfruté de la atmósfera relajada y el servicio amable. La comida estaba deliciosa, aunque creo que podrían ofrecer más opciones vegetarianas en el menú. Volveré pronto.', 1, '918c0bf0-0130-4cb3-8cd8-a9903b5076ae', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO public.place_review(id, stars, comment, "placeId", "userId", "createdAt", "updatedAt") VALUES (uuid_generate_v4(), 5, 'La visita a este lugar fue memorable. Desde la entrada hasta la salida, el personal fue amable y atento. La decoración del lugar añadió un toque acogedor, y los platos servidos fueron deliciosos. ¡Definitivamente lo recomendaré!', 1, '918c0bf0-0130-4cb3-8cd8-a9903b5076ae', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO public.place_review(id, stars, comment, "placeId", "userId", "createdAt", "updatedAt") VALUES (uuid_generate_v4(), 4, 'La experiencia en este lugar fue excelente. La calidad del servicio y la atención al cliente fueron destacadas. El ambiente relajado hizo que mi visita fuera muy agradable. Sin duda, volveré en el futuro.', 1, '918c0bf0-0130-4cb3-8cd8-a9903b5076ae', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO public.place_review(id, stars, comment, "placeId", "userId", "createdAt", "updatedAt") VALUES (uuid_generate_v4(), 5, 'La vista desde este lugar es simplemente increíble. Disfruté cada momento de mi visita y quedé impresionado con la belleza natural que rodea este lugar. Definitivamente, uno de los mejores lugares para disfrutar de una vista panorámica.', 2, '5fd0caae-a66c-4079-a78d-b2f6009ee5de', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO public.place_review(id, stars, comment, "placeId", "userId", "createdAt", "updatedAt") VALUES (uuid_generate_v4(), 3, 'Aunque el lugar tiene su encanto, noté algunas áreas que podrían mejorar. La limpieza podría ser más rigurosa, y algunas instalaciones necesitan renovación. Con algunas mejoras, este lugar podría ser aún más atractivo.', 7, '918c0bf0-0130-4cb3-8cd8-a9903b5076ae', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO public.place_review(id, stars, comment, "placeId", "userId", "createdAt", "updatedAt") VALUES (uuid_generate_v4(), 4, 'Este lugar tiene una atmósfera tranquila y relajante. Perfecto para aquellos que buscan un espacio sereno para disfrutar. La atención del personal fue excelente, y disfruté de cada momento en este lugar.', 10, '5fd0caae-a66c-4079-a78d-b2f6009ee5de', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);



-- Para eventos con IDs del 1 al 3
INSERT INTO public.event_review(id, stars, comment, "eventId", "userId", "createdAt", "updatedAt") VALUES (uuid_generate_v4(), 4, 'El evento me encantó, fue maravilloso, disfrute desde el inicio hasta el fin.', 1, '918c0bf0-0130-4cb3-8cd8-a9903b5076ae', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO public.event_review(id, stars, comment, "eventId", "userId", "createdAt", "updatedAt") VALUES (uuid_generate_v4(), 5, 'Entretenimiento increíble y garantizado, me la pase de lujo.', 2, '5fd0caae-a66c-4079-a78d-b2f6009ee5de', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO public.event_review(id, stars, comment, "eventId", "userId", "createdAt", "updatedAt") VALUES (uuid_generate_v4(), 3, 'Podría mejorar la organización, hubieron un par de cosas en la musica que no me gustaron.', 3, '918c0bf0-0130-4cb3-8cd8-a9903b5076ae', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);



-- Ejemplo 1
INSERT INTO public.store(id, name, description, phone, address, "gpsCoordinates", "cantonId")
VALUES (1, 'Restaurante Guayaquil Delicioso', 'Comida local y internacional', '123-456-7890', 'Avenida Principal 123, Guayaquil', '-2.2038, -79.8975', 1);

-- Ejemplo 2
INSERT INTO public.store(id, name, description, phone, address, "gpsCoordinates", "cantonId")
VALUES (2, 'Cevichería Sabor a Mar', 'Especialidad en ceviches frescos', '987-654-3210', 'Calle del Mar 456, Salinas', '-2.2228, -80.9597', 2);

-- Ejemplo 3
INSERT INTO public.store(id, name, description, phone, address, "gpsCoordinates", "cantonId")
VALUES (3, 'Parrillada El Ranchero', 'Carnes a la parrilla y asados', '555-123-4567', 'Avenida Carnes 789, Durán', '-2.1685, -79.8734', 3);




-- Example 1
INSERT INTO public.cupon(id, name, description, code, "expirationDate", "storeId", "pointsNeeded", "percentageDiscount", thumbnail)
VALUES (1, 'Cupón 0012', '10% Descuento en entrada a Zoo El pantano', 'COD123', '2023-12-31T23:59:59Z', 1, 100, 10, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxfdq02L-mQQPEiarwzsW8GLFXZ-2lvyR0dFyosran3LEVeRHdQiSH1hki5ozUdW1d0C8&usqp=CAU');

-- Example 2
INSERT INTO public.cupon(id, name, description, code, "expirationDate", "storeId", "pointsNeeded", "percentageDiscount", thumbnail)
VALUES (2, 'Cupón 0023', '10% Descuento en Navona Plaza', 'COD456', '2023-12-31T23:59:59Z', 2, 150, 15, 'https://fastly.4sqi.net/img/general/600x600/20266471_GrjbZodCGPYpjxT32EJplAgInKf1YpE7ZbcZkQ0MGws.jpg');

-- Example 3
INSERT INTO public.cupon(id, name, description, code, "expirationDate", "storeId", "pointsNeeded", "percentageDiscount", thumbnail)
VALUES (3, 'Cupón 0029', '2 x 1 en paseo a Caballo en Hacienda La Danesa', 'COD789', '2023-12-31T23:59:59Z', 3, 200, 20, 'https://media.licdn.com/dms/image/C4E0BAQG8Qyfd7bKyVA/company-logo_200_200/0/1630638858701/hacienda_la_danesa_logo?e=2147483647&v=beta&t=knS2ch2zcD_yWrPqQZ8Dz1By362OfrI1yHGSJr2NZI4');

-- Example 4
INSERT INTO public.cupon(id, name, description, code, "expirationDate", "storeId", "pointsNeeded", "percentageDiscount", thumbnail)
VALUES (4, 'Cupón 0035', 'Paseo GRATIS en la perla', 'COD659', '2023-12-31T23:59:59Z', 3, 60, 5, 'https://ecuadorenletras.files.wordpress.com/2017/12/15perla.jpg?w=640');

-- Example 5
INSERT INTO public.cupon(id, name, description, code, "expirationDate", "storeId", "pointsNeeded", "percentageDiscount", thumbnail)
VALUES (5, 'Cupón 0039', '2 x 1 en partido en el estadio Banco Pichincha', 'COD512', '2023-12-31T23:59:59Z', 1, 400, 60, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwughE3t59NMRIE-1XYDxpev0JMb3U9qmkeQ&usqp=CAU');




-- Usuario 1, Cupón 1
INSERT INTO public.user_cupon(id, quantity, "userId", "cuponId", code)
VALUES (uuid_generate_v4(), 1, '918c0bf0-0130-4cb3-8cd8-a9903b5076ae', 1, 'COD123:1');

-- Usuario 1, Cupón 2
INSERT INTO public.user_cupon(id, quantity, "userId", "cuponId", code)
VALUES (uuid_generate_v4(), 3, '918c0bf0-0130-4cb3-8cd8-a9903b5076ae', 2, 'COD456:1');

-- Usuario 2, Cupón 1
INSERT INTO public.user_cupon(id, quantity, "userId", "cuponId", code)
VALUES (uuid_generate_v4(), 2, '5fd0caae-a66c-4079-a78d-b2f6009ee5de', 1, 'COD123:2');

-- Usuario 2, Cupón 2
INSERT INTO public.user_cupon(id, quantity, "userId", "cuponId", code)
VALUES (uuid_generate_v4(), 1, '5fd0caae-a66c-4079-a78d-b2f6009ee5de', 2, 'COD456:2');



-- Consultas INSERT con datos falsos para eventos del 1 al 10
INSERT INTO public.event_opening_date (id, year, month, day, "openingTime", "closingTime", "eventId")
VALUES (1, 2024, 1, 15, '09:00', '18:00', 1);

INSERT INTO public.event_opening_date (id, year, month, day, "openingTime", "closingTime", "eventId")
VALUES (2, 2024, 2, 20, '10:00', '19:30', 2);

INSERT INTO public.event_opening_date (id, year, month, day, "openingTime", "closingTime", "eventId")
VALUES (3, 2024, 3, 10, '08:30', '17:30', 3);

INSERT INTO public.event_opening_date (id, year, month, day, "openingTime", "closingTime", "eventId")
VALUES (4, 2024, 4, 5, '11:00', '20:00', 4);

INSERT INTO public.event_opening_date (id, year, month, day, "openingTime", "closingTime", "eventId") 
VALUES (5, 2024, 1, 25, '08:00', '17:00', 4);

INSERT INTO public.event_opening_date (id, year, month, day, "openingTime", "closingTime", "eventId") 
VALUES (6, 2024, 2, 15, '09:30', '18:30', 4);

INSERT INTO public.event_opening_date (id, year, month, day, "openingTime", "closingTime", "eventId") 
VALUES (7, 2024, 3, 5, '10:00', '19:00', 5);

INSERT INTO public.event_opening_date (id, year, month, day, "openingTime", "closingTime", "eventId") 
VALUES (8, 2024, 1, 10, '11:00', '20:00', 6);

INSERT INTO public.event_opening_date (id, year, month, day, "openingTime", "closingTime", "eventId") 
VALUES (9, 2024, 3, 20, '08:30', '17:30', 6);

INSERT INTO public.event_opening_date (id, year, month, day, "openingTime", "closingTime", "eventId") 
VALUES (10, 2024, 4, 2, '09:00', '18:00', 6);

INSERT INTO public.event_opening_date (id, year, month, day, "openingTime", "closingTime", "eventId") 
VALUES (11, 2024, 2, 5, '10:30', '19:30', 7);

INSERT INTO public.event_opening_date (id, year, month, day, "openingTime", "closingTime", "eventId") 
VALUES (12, 2024, 3, 15, '11:30', '20:30', 7);

INSERT INTO public.event_opening_date (id, year, month, day, "openingTime", "closingTime", "eventId") 
VALUES (13, 2024, 4, 10, '08:00', '17:00', 7);

INSERT INTO public.event_opening_date (id, year, month, day, "openingTime", "closingTime", "eventId") 
VALUES (14, 2024, 1, 28, '09:00', '18:00', 8);

INSERT INTO public.event_opening_date (id, year, month, day, "openingTime", "closingTime", "eventId") 
VALUES (15, 2024, 4, 15, '10:00', '19:00', 8);

INSERT INTO public.event_opening_date (id, year, month, day, "openingTime", "closingTime", "eventId") 
VALUES (16, 2024, 5, 5, '11:00', '20:00', 9);

INSERT INTO public.event_opening_date (id, year, month, day, "openingTime", "closingTime", "eventId") 
VALUES (17, 2024, 6, 20, '08:30', '17:30', 9);


