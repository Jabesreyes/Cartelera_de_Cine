namespace Cartelera.Models
{
    public class Calificaciones
    {
        public int Id { get; set; }
        public int PeliculaId { get; set; }
        public decimal Calificacion {  get; set; }
        public DateTime FechaCalificacion { get; set; }
        public Peliculas Pelicula { get; set; }
    }
}
