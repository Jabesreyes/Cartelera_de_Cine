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
