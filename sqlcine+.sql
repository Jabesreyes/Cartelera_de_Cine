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
VALUES ('Napole�n', 'Napole�n es una epopeya de acci�n llena de espect�culos que detalla el accidentado ascenso y ca�da del ic�nico emperador franc�s Napole�n Bonaparte, interpretado por el ganador del Oscar Joaquin Phoenix. Con un impresionante tel�n de fondo de cine a gran escala orquestado por el legendario director Ridley Scott, la pel�cula captura el incesante viaje de Bonaparte hacia el poder a trav�s del prisma de su adictiva y vol�til relaci�n con su �nico amor verdadero, Josephine, mostrando sus visionarias t�cticas militares y pol�ticas contra algunos de las secuencias de batalla pr�cticas m�s din�micas jam�s filmadas.', 'Ridley Scott', 'Drama', 'https://all.web.img.acsta.net/pictures/23/10/18/15/26/3220184.jpg/r_250_x');

INSERT INTO Peliculas (Titulo, Sinopsis, Director, Genero, PosterUrl)
VALUES ('The Marvels', 'Carol Danvers, tambi�n conocida como Capitana Marvel, ha reclamado su identidad del tir�nico Kree y se ha vengado de la Inteligencia Suprema. Pero las consecuencias no deseadas hacen que Carol cargue con la carga de un universo desestabilizado. Cuando sus deberes la env�an a un agujero de gusano an�malo vinculado a un revolucionario Kree, sus poderes se enredan con los de la s�per fan de Jersey City, Kamala Khan, tambi�n conocida como Ms. Marvel, y la sobrina separada de Carol, ahora S.A.B.E.R. La astronauta capitana M�nica Rambeau. Juntos, este improbable tr�o debe formar equipo y aprender a trabajar en conjunto para salvar el universo como "Las Maravillas".', 'Nia DaCosta', 'Accion, Aventura, Ciencia Ficcion', 'https://all.web.img.acsta.net/pictures/23/07/21/15/10/4935869.jpg/r_250_x');

INSERT INTO Peliculas (Titulo, Sinopsis, Director, Genero, PosterUrl)
VALUES ('RENAISSANCE: A FILM BY BEYONC�', 'RENAISSANCE: UNA PEL�CULA DE BEYONC� acent�a el viaje de RENAISSANCE WORLD TOUR, desde su inicio hasta la apertura en Estocolmo, Suecia, y el final en Kansas City, Missouri. Se trata de la intenci�n, el trabajo duro, la participaci�n de Beyonc� en cada aspecto de la producci�n, su mente creativa y su prop�sito de crear su legado y dominar su oficio. Recibido con extraordinaria aclamaci�n, el RENAISSANCE WORLD TOUR de Beyonc� cre� un santuario para la libertad y la alegr�a compartida para m�s de 2,7 millones de fans.', 'Oh Yoon-Dong', 'Musical', 'https://cms-assets.webediamovies.pro/cdn-cgi/image/dpr=1,fit=scale-down,gravity=auto,metadata=none,quality=85,width=1750/production/2/6addd04f07ac3d11b05b626a3288a707.jpeg');

INSERT INTO Peliculas (Titulo, Sinopsis, Director, Genero, PosterUrl)
VALUES ('Wonka', 'Una historia de origen que explora los v�vidos y m�ticos comienzos del joven e imaginativo inventor antes de convertirse en el renombrado y delicioso Mozart del chocolate.', 'Paul King', 'Aventura, Comedia', 'https://all.web.img.acsta.net/pictures/23/11/07/21/46/3544403.jpg/r_250_x');

INSERT INTO Peliculas (Titulo, Sinopsis, Director, Genero, PosterUrl)
VALUES ('Viernes negro', 'Despu�s de que un mot�n del Viernes Negro termina en tragedia, un misterioso asesino inspirado en el D�a de Acci�n de Gracias aterroriza a Plymouth, Massachusetts, el lugar de nacimiento de la festividad. Eliminando a los residentes uno por uno, lo que comienza como asesinatos aleatorios por venganza pronto se revela como parte de un juego navide�o m�s grande y siniestro. �Descubrir� el pueblo al asesino y sobrevivir� a las fiestas... o se convertir� en invitado en su retorcida mesa navide�a?', 'Eli Roth', 'Terror', 'https://all.web.img.acsta.net/pictures/23/10/03/17/05/5620047.jpg/r_250_x');

INSERT INTO Peliculas (Titulo, Sinopsis, Director, Genero, PosterUrl)
VALUES ('Wish: El poder de los deseos', 'En "Wish", Asha, una ingeniosa idealista, pide un deseo tan poderoso que es respondido por una fuerza c�smica: una peque�a bola de energ�a ilimitada llamada Estrella. Juntas, Asha y Star se enfrentan al enemigo m�s formidable, el gobernante de Rosas, el Rey Magn�fico, para salvar a su comunidad y demostrar que cuando la voluntad de un humano valiente se conecta con la magia de las estrellas, pueden suceder cosas maravillosas.', 'Chris Buck', 'Animacion', 'https://all.web.img.acsta.net/pictures/23/09/28/11/49/1309079.jpg/r_250_x');

INSERT INTO Peliculas (Titulo, Sinopsis, Director, Genero, PosterUrl)
VALUES ('Los Juegos del Hambre Balada de P�jaros Cantores y Serpientes', 'LOS JUEGOS DEL HAMBRE: LA BALLADA DE P�JAROS CANTOROS Y SERPIENTES sigue a un joven Coriolanus (Tom Blyth) que es la �ltima esperanza para su linaje fallido, la alguna vez orgullosa familia Snow que ha ca�do en desgracia en un Capitolio de la posguerra. Con su sustento amenazado, Snow es asignado a rega�adientes como mentor de Lucy Gray Baird (Rachel Zegler), un tributo del empobrecido Distrito 12. Pero despu�s de que el encanto de Lucy Gray cautiva a la audiencia de Panem, Snow ve una oportunidad para cambiar sus destinos. Con todo por lo que ha trabajado est� en juego, Snow se une a Lucy Gray para cambiar las probabilidades a su favor. Luchando contra sus instintos tanto para el bien como para el mal, Snow emprende una carrera contra el tiempo para sobrevivir y revelar si finalmente se convertir� en un p�jaro cantor o en una serpiente.', 'Francis Lawrence', 'Ciencia Ficcion, Accion, Aventura', 'https://all.web.img.acsta.net/pictures/23/09/20/15/54/3311902.jpg/r_250_x');

INSERT INTO Peliculas (Titulo, Sinopsis, Director, Genero, PosterUrl)
VALUES ('Trolls 3: Se arm� la banda', 'Despu�s de dos pel�culas de verdadera amistad y coqueteo implacable, Poppy (Anna Kendrick) y Branch (Justin Timberlake) ahora son oficialmente, finalmente, pareja (#broppy). A medida que se acercan, Poppy descubre que Branch tiene un pasado secreto. Una vez fue parte de su fen�meno de boyband favorito, BroZone, con sus cuatro hermanos: Floyd (la sensaci�n del electropop nominado al Globo de Oro Troye Sivan), John Dory (Eric Andr�; Sing 2), Spruce (el ganador del Grammy Daveed Diggs; Hamilton) y Clay ( Kid Cudi, ganador del Grammy; No mires hacia arriba). BroZone se disolvi� cuando Branch todav�a era un beb�, al igual que la familia, y Branch no ha visto a sus hermanos desde entonces. Pero cuando Floyd, el hermano de Branch, es secuestrado por su talento musical por un par de villanos infames estrellas del pop: Velvet (la ganadora del Emmy Amy Schumer; Trainwreck) y Veneer (el ganador del Grammy y nominado al Tony Andrew Rannells; El Libro de Morm�n), Branch y Poppy. Emb�rcate en un viaje desgarrador y emotivo para reunir a los otros hermanos y rescatar a Floyd de un destino incluso peor que la oscuridad de la cultura pop.', 'Tim Heitz', 'Animacion', 'https://all.web.img.acsta.net/pictures/23/11/11/17/43/3953256.jpg/r_250_x');

INSERT INTO Peliculas (Titulo, Sinopsis, Director, Genero, PosterUrl)
VALUES ('Quemadura Salada', 'La cineasta ganadora del Oscar Emerald Fennell (La joven prometedora) nos trae una perversa historia de privilegios y deseos. Mientras lucha por encontrar su lugar en la Universidad de Oxford, el estudiante Oliver Quick (Barry Keoghan) se ve arrastrado al mundo del encantador y aristocr�tico Felix Catton (Jacob Elordi), quien lo invita a Saltburn, la extensa propiedad de su exc�ntrica familia, para pasar un verano nunca antes visto. para ser olvidado.', 'Emerald Fennell', 'Comedia, Drama', 'https://all.web.img.acsta.net/pictures/23/10/19/09/11/1246153.jpg/r_250_x');

INSERT INTO Peliculas (Titulo, Sinopsis, Director, Genero, PosterUrl)
VALUES ('El ni�o y la garza', 'Un joven llamado Mahito, a�orando a su madre, se aventura en un mundo compartido por vivos y muertos. All� la muerte llega a su fin y la vida encuentra un nuevo comienzo. Una fantas�a semiautobiogr�fica sobre la vida, la muerte y la creaci�n, en homenaje a la amistad, desde la mente de Hayao Miyazaki.', 'Hayao Miyazaki', 'Animada', 'https://all.web.img.acsta.net/pictures/23/10/18/01/27/1343382.jpg/r_250_x');

INSERT INTO Peliculas (Titulo, Sinopsis, Director, Genero, PosterUrl)
VALUES ('Aquaman y el reino perdido', 'Al no poder derrotar a Aquaman la primera vez, Black Manta, todav�a impulsado por la necesidad de vengar la muerte de su padre, no se detendr� ante nada para acabar con Aquaman de una vez por todas. Esta vez, Black Manta es m�s formidable que nunca y ejerce el poder del m�tico Tridente Negro, que desata una fuerza antigua y mal�vola. Para derrotarlo, Aquaman recurrir� a su hermano encarcelado Orm, el ex rey de la Atl�ntida, para forjar una alianza improbable. Juntos, deben dejar de lado sus diferencias para proteger su reino y salvar a la familia de Aquaman y al mundo de una destrucci�n irreversible.', 'James Wan', 'Accion, Aventura', 'https://all.web.img.acsta.net/pictures/23/11/14/10/39/1150441.jpg/r_250_x');

INSERT INTO Peliculas (Titulo, Sinopsis, Director, Genero, PosterUrl)
VALUES ('Chicas Malas', 'De la mente c�mica de Tina Fey llega un nuevo giro al cl�sico moderno, MEAN GIRLS. La nueva estudiante Cady Heron (Angourie Rice) es bienvenida en la cima de la cadena social alimenticia por el grupo de �lite de chicas populares llamado "The Plastics", gobernado por la intrigante abeja reina Regina George (Rene� Rapp) y sus secuaces Gretchen (Bebe Wood). ) y Karen (Avantika). Sin embargo, cuando Cady comete el grave paso en falso de enamorarse del exnovio de Regina, Aaron Samuels (Christopher Briney), se encuentra presa en la mira de Regina. Mientras Cady se dispone a acabar con el m�ximo depredador del grupo con la ayuda de sus amigos marginados Janis (Aulii Cravalho) y Damian (Jaquel Spivey), debe aprender a mantenerse fiel a s� misma mientras navega por la jungla m�s despiadada de todas: la alta escuela.', 'Samantha Jayne, Arturo Perez Jr.', 'Comedia', 'https://all.web.img.acsta.net/pictures/23/11/08/15/46/3612180.jpg/r_250_x');

INSERT INTO Peliculas (Titulo, Sinopsis, Director, Genero, PosterUrl)
VALUES ('Godzilla Menos Uno', 'Jap�n, devastado tras la guerra, se enfrenta a una nueva amenaza en la forma de Godzilla. �C�mo afrontar� el pa�s esta situaci�n imposible?', 'Takashi Yamazaki', 'Ciencia Ficcion, Accion', 'https://all.web.img.acsta.net/pictures/23/07/12/02/01/4027142.jpg/r_250_x');

INSERT INTO Peliculas (Titulo, Sinopsis, Director, Genero, PosterUrl)
VALUES ('El cambio', 'En *The Shift*, un drama dist�pico y thriller de ciencia ficci�n, un hombre se enfrenta a mundos infinitos y elecciones imposibles. Cuando Kevin Garner conoce a un nefasto adversario conocido como El Benefactor y rechaza su oferta de riqueza y poder, debe escapar de una realidad totalitaria alternativa. Con la supervivencia en juego, Kevin lucha por regresar al mundo que conoce y a la mujer que ama.', 'Brock Heasley', 'Ciencia Ficcion', 'https://all.web.img.acsta.net/pictures/23/10/16/15/27/3110151.jpg/r_250_x');

INSERT INTO Peliculas (Titulo, Sinopsis, Director, Genero, PosterUrl)
VALUES ('Los chicos en el bote', 'The Boys in the Boat es un drama deportivo basado en la novela de no ficci�n n�mero uno en ventas del New York Times escrita por Daniel James Brown. La pel�cula, dirigida por George Clooney, trata sobre el equipo de remo de la Universidad de Washington de 1936 que compiti� por el oro en los Juegos Ol�mpicos de Verano en Berl�n. Esta inspiradora historia real sigue a un grupo de desvalidos en el apogeo de la Gran Depresi�n mientras se convierten en el centro de atenci�n y se enfrentan a rivales de �lite de todo el mundo.', 'George Clooney', 'Drama, Historico', 'https://all.web.img.acsta.net/pictures/23/10/18/18/16/0154369.jpg/r_250_x');

