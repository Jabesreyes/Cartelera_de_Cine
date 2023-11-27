using Microsoft.EntityFrameworkCore;
using Cartelera.Models;
namespace Cartelera.Data
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
        : base(options)
        {
        }

        public DbSet<Peliculas> Peliculas { get; set; }
        public DbSet<Calificaciones> Calificaciones { get; set; }
    }
}
