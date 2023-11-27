namespace Cartelera.Models
{
    public class Peliculas
    {
        public int Id { get; set; }
        public string Titulo { get; set; }
        public string Sinopsis { get; set; }
        public string Director { get; set; }
        public string Genero { get; set; }
        public string PosterUrl { get; set; }
        public List<Calificaciones> Calificaciones { get; set; }
    }

}
