CREATE DATABASE CinePlus;

USE CinePlus;

CREATE TABLE Peliculas (
    Id INT PRIMARY KEY IDENTITY,
    Titulo NVARCHAR(100) NOT NULL,
    Sinopsis NVARCHAR(MAX),
    Director NVARCHAR(100),
    Genero NVARCHAR(50),
    PosterUrl NVARCHAR(MAX)
);

CREATE TABLE Calificaciones (
    Id INT PRIMARY KEY IDENTITY,
    PeliculaId INT FOREIGN KEY REFERENCES Peliculas(Id),
    Calificacion DECIMAL(3,2) NOT NULL,
    FechaCalificacion DATETIME DEFAULT GETDATE()
);

INSERT INTO Peliculas (Titulo, Sinopsis, Director, Genero, PosterUrl)
VALUES ('Napoleón', 'Napoleón es una epopeya de acción llena de espectáculos que detalla el accidentado ascenso y caída del icónico emperador francés Napoleón Bonaparte, interpretado por el ganador del Oscar Joaquin Phoenix. Con un impresionante telón de fondo de cine a gran escala orquestado por el legendario director Ridley Scott, la película captura el incesante viaje de Bonaparte hacia el poder a través del prisma de su adictiva y volátil relación con su único amor verdadero, Josephine, mostrando sus visionarias tácticas militares y políticas contra algunos de las secuencias de batalla prácticas más dinámicas jamás filmadas.', 'Ridley Scott', 'Drama', 'https://all.web.img.acsta.net/pictures/23/10/18/15/26/3220184.jpg/r_250_x');

INSERT INTO Peliculas (Titulo, Sinopsis, Director, Genero, PosterUrl)
VALUES ('The Marvels', 'Carol Danvers, también conocida como Capitana Marvel, ha reclamado su identidad del tiránico Kree y se ha vengado de la Inteligencia Suprema. Pero las consecuencias no deseadas hacen que Carol cargue con la carga de un universo desestabilizado. Cuando sus deberes la envían a un agujero de gusano anómalo vinculado a un revolucionario Kree, sus poderes se enredan con los de la súper fan de Jersey City, Kamala Khan, también conocida como Ms. Marvel, y la sobrina separada de Carol, ahora S.A.B.E.R. La astronauta capitana Mónica Rambeau. Juntos, este improbable trío debe formar equipo y aprender a trabajar en conjunto para salvar el universo como "Las Maravillas".', 'Nia DaCosta', 'Accion, Aventura, Ciencia Ficcion', 'https://all.web.img.acsta.net/pictures/23/07/21/15/10/4935869.jpg/r_250_x');

INSERT INTO Peliculas (Titulo, Sinopsis, Director, Genero, PosterUrl)
VALUES ('RENAISSANCE: A FILM BY BEYONCÉ', 'RENAISSANCE: UNA PELÍCULA DE BEYONCÉ acentúa el viaje de RENAISSANCE WORLD TOUR, desde su inicio hasta la apertura en Estocolmo, Suecia, y el final en Kansas City, Missouri. Se trata de la intención, el trabajo duro, la participación de Beyoncé en cada aspecto de la producción, su mente creativa y su propósito de crear su legado y dominar su oficio. Recibido con extraordinaria aclamación, el RENAISSANCE WORLD TOUR de Beyoncé creó un santuario para la libertad y la alegría compartida para más de 2,7 millones de fans.', 'Oh Yoon-Dong', 'Musical', 'https://cms-assets.webediamovies.pro/cdn-cgi/image/dpr=1,fit=scale-down,gravity=auto,metadata=none,quality=85,width=1750/production/2/6addd04f07ac3d11b05b626a3288a707.jpeg');

INSERT INTO Peliculas (Titulo, Sinopsis, Director, Genero, PosterUrl)
VALUES ('Wonka', 'Una historia de origen que explora los vívidos y míticos comienzos del joven e imaginativo inventor antes de convertirse en el renombrado y delicioso Mozart del chocolate.', 'Paul King', 'Aventura, Comedia', 'https://all.web.img.acsta.net/pictures/23/11/07/21/46/3544403.jpg/r_250_x');

INSERT INTO Peliculas (Titulo, Sinopsis, Director, Genero, PosterUrl)
VALUES ('Viernes negro', 'Después de que un motín del Viernes Negro termina en tragedia, un misterioso asesino inspirado en el Día de Acción de Gracias aterroriza a Plymouth, Massachusetts, el lugar de nacimiento de la festividad. Eliminando a los residentes uno por uno, lo que comienza como asesinatos aleatorios por venganza pronto se revela como parte de un juego navideño más grande y siniestro. ¿Descubrirá el pueblo al asesino y sobrevivirá a las fiestas... o se convertirá en invitado en su retorcida mesa navideña?', 'Eli Roth', 'Terror', 'https://all.web.img.acsta.net/pictures/23/10/03/17/05/5620047.jpg/r_250_x');

INSERT INTO Peliculas (Titulo, Sinopsis, Director, Genero, PosterUrl)
VALUES ('Wish: El poder de los deseos', 'En "Wish", Asha, una ingeniosa idealista, pide un deseo tan poderoso que es respondido por una fuerza cósmica: una pequeña bola de energía ilimitada llamada Estrella. Juntas, Asha y Star se enfrentan al enemigo más formidable, el gobernante de Rosas, el Rey Magnífico, para salvar a su comunidad y demostrar que cuando la voluntad de un humano valiente se conecta con la magia de las estrellas, pueden suceder cosas maravillosas.', 'Chris Buck', 'Animacion', 'https://all.web.img.acsta.net/pictures/23/09/28/11/49/1309079.jpg/r_250_x');

INSERT INTO Peliculas (Titulo, Sinopsis, Director, Genero, PosterUrl)
VALUES ('Los Juegos del Hambre Balada de Pájaros Cantores y Serpientes', 'LOS JUEGOS DEL HAMBRE: LA BALLADA DE PÁJAROS CANTOROS Y SERPIENTES sigue a un joven Coriolanus (Tom Blyth) que es la última esperanza para su linaje fallido, la alguna vez orgullosa familia Snow que ha caído en desgracia en un Capitolio de la posguerra. Con su sustento amenazado, Snow es asignado a regañadientes como mentor de Lucy Gray Baird (Rachel Zegler), un tributo del empobrecido Distrito 12. Pero después de que el encanto de Lucy Gray cautiva a la audiencia de Panem, Snow ve una oportunidad para cambiar sus destinos. Con todo por lo que ha trabajado está en juego, Snow se une a Lucy Gray para cambiar las probabilidades a su favor. Luchando contra sus instintos tanto para el bien como para el mal, Snow emprende una carrera contra el tiempo para sobrevivir y revelar si finalmente se convertirá en un pájaro cantor o en una serpiente.', 'Francis Lawrence', 'Ciencia Ficcion, Accion, Aventura', 'https://all.web.img.acsta.net/pictures/23/09/20/15/54/3311902.jpg/r_250_x');

INSERT INTO Peliculas (Titulo, Sinopsis, Director, Genero, PosterUrl)
VALUES ('Trolls 3: Se armó la banda', 'Después de dos películas de verdadera amistad y coqueteo implacable, Poppy (Anna Kendrick) y Branch (Justin Timberlake) ahora son oficialmente, finalmente, pareja (#broppy). A medida que se acercan, Poppy descubre que Branch tiene un pasado secreto. Una vez fue parte de su fenómeno de boyband favorito, BroZone, con sus cuatro hermanos: Floyd (la sensación del electropop nominado al Globo de Oro Troye Sivan), John Dory (Eric André; Sing 2), Spruce (el ganador del Grammy Daveed Diggs; Hamilton) y Clay ( Kid Cudi, ganador del Grammy; No mires hacia arriba). BroZone se disolvió cuando Branch todavía era un bebé, al igual que la familia, y Branch no ha visto a sus hermanos desde entonces. Pero cuando Floyd, el hermano de Branch, es secuestrado por su talento musical por un par de villanos infames estrellas del pop: Velvet (la ganadora del Emmy Amy Schumer; Trainwreck) y Veneer (el ganador del Grammy y nominado al Tony Andrew Rannells; El Libro de Mormón), Branch y Poppy. Embárcate en un viaje desgarrador y emotivo para reunir a los otros hermanos y rescatar a Floyd de un destino incluso peor que la oscuridad de la cultura pop.', 'Tim Heitz', 'Animacion', 'https://all.web.img.acsta.net/pictures/23/11/11/17/43/3953256.jpg/r_250_x');

INSERT INTO Peliculas (Titulo, Sinopsis, Director, Genero, PosterUrl)
VALUES ('Quemadura Salada', 'La cineasta ganadora del Oscar Emerald Fennell (La joven prometedora) nos trae una perversa historia de privilegios y deseos. Mientras lucha por encontrar su lugar en la Universidad de Oxford, el estudiante Oliver Quick (Barry Keoghan) se ve arrastrado al mundo del encantador y aristocrático Felix Catton (Jacob Elordi), quien lo invita a Saltburn, la extensa propiedad de su excéntrica familia, para pasar un verano nunca antes visto. para ser olvidado.', 'Emerald Fennell', 'Comedia, Drama', 'https://all.web.img.acsta.net/pictures/23/10/19/09/11/1246153.jpg/r_250_x');

INSERT INTO Peliculas (Titulo, Sinopsis, Director, Genero, PosterUrl)
VALUES ('El niño y la garza', 'Un joven llamado Mahito, añorando a su madre, se aventura en un mundo compartido por vivos y muertos. Allí la muerte llega a su fin y la vida encuentra un nuevo comienzo. Una fantasía semiautobiográfica sobre la vida, la muerte y la creación, en homenaje a la amistad, desde la mente de Hayao Miyazaki.', 'Hayao Miyazaki', 'Animada', 'https://all.web.img.acsta.net/pictures/23/10/18/01/27/1343382.jpg/r_250_x');

INSERT INTO Peliculas (Titulo, Sinopsis, Director, Genero, PosterUrl)
VALUES ('Aquaman y el reino perdido', 'Al no poder derrotar a Aquaman la primera vez, Black Manta, todavía impulsado por la necesidad de vengar la muerte de su padre, no se detendrá ante nada para acabar con Aquaman de una vez por todas. Esta vez, Black Manta es más formidable que nunca y ejerce el poder del mítico Tridente Negro, que desata una fuerza antigua y malévola. Para derrotarlo, Aquaman recurrirá a su hermano encarcelado Orm, el ex rey de la Atlántida, para forjar una alianza improbable. Juntos, deben dejar de lado sus diferencias para proteger su reino y salvar a la familia de Aquaman y al mundo de una destrucción irreversible.', 'James Wan', 'Accion, Aventura', 'https://all.web.img.acsta.net/pictures/23/11/14/10/39/1150441.jpg/r_250_x');

INSERT INTO Peliculas (Titulo, Sinopsis, Director, Genero, PosterUrl)
VALUES ('Chicas Malas', 'De la mente cómica de Tina Fey llega un nuevo giro al clásico moderno, MEAN GIRLS. La nueva estudiante Cady Heron (Angourie Rice) es bienvenida en la cima de la cadena social alimenticia por el grupo de élite de chicas populares llamado "The Plastics", gobernado por la intrigante abeja reina Regina George (Reneé Rapp) y sus secuaces Gretchen (Bebe Wood). ) y Karen (Avantika). Sin embargo, cuando Cady comete el grave paso en falso de enamorarse del exnovio de Regina, Aaron Samuels (Christopher Briney), se encuentra presa en la mira de Regina. Mientras Cady se dispone a acabar con el máximo depredador del grupo con la ayuda de sus amigos marginados Janis (Aulii Cravalho) y Damian (Jaquel Spivey), debe aprender a mantenerse fiel a sí misma mientras navega por la jungla más despiadada de todas: la alta escuela.', 'Samantha Jayne, Arturo Perez Jr.', 'Comedia', 'https://all.web.img.acsta.net/pictures/23/11/08/15/46/3612180.jpg/r_250_x');

INSERT INTO Peliculas (Titulo, Sinopsis, Director, Genero, PosterUrl)
VALUES ('Godzilla Menos Uno', 'Japón, devastado tras la guerra, se enfrenta a una nueva amenaza en la forma de Godzilla. ¿Cómo afrontará el país esta situación imposible?', 'Takashi Yamazaki', 'Ciencia Ficcion, Accion', 'https://all.web.img.acsta.net/pictures/23/07/12/02/01/4027142.jpg/r_250_x');

INSERT INTO Peliculas (Titulo, Sinopsis, Director, Genero, PosterUrl)
VALUES ('El cambio', 'En *The Shift*, un drama distópico y thriller de ciencia ficción, un hombre se enfrenta a mundos infinitos y elecciones imposibles. Cuando Kevin Garner conoce a un nefasto adversario conocido como El Benefactor y rechaza su oferta de riqueza y poder, debe escapar de una realidad totalitaria alternativa. Con la supervivencia en juego, Kevin lucha por regresar al mundo que conoce y a la mujer que ama.', 'Brock Heasley', 'Ciencia Ficcion', 'https://all.web.img.acsta.net/pictures/23/10/16/15/27/3110151.jpg/r_250_x');

INSERT INTO Peliculas (Titulo, Sinopsis, Director, Genero, PosterUrl)
VALUES ('Los chicos en el bote', 'The Boys in the Boat es un drama deportivo basado en la novela de no ficción número uno en ventas del New York Times escrita por Daniel James Brown. La película, dirigida por George Clooney, trata sobre el equipo de remo de la Universidad de Washington de 1936 que compitió por el oro en los Juegos Olímpicos de Verano en Berlín. Esta inspiradora historia real sigue a un grupo de desvalidos en el apogeo de la Gran Depresión mientras se convierten en el centro de atención y se enfrentan a rivales de élite de todo el mundo.', 'George Clooney', 'Drama, Historico', 'https://all.web.img.acsta.net/pictures/23/10/18/18/16/0154369.jpg/r_250_x');

