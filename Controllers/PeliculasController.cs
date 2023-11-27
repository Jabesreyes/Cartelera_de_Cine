using Cartelera.Data;
using Cartelera.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace Cartelera.Controllers
{
    public class PeliculasController : Controller
    {
        private readonly ApplicationDbContext _context;

        public PeliculasController(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<IActionResult> Index(string searchString)
        {
            var peliculas = from p in _context.Peliculas
                            select p;

            if (!String.IsNullOrEmpty(searchString))
            {
                peliculas = peliculas.Where(p => p.Titulo.Contains(searchString));
            }

            return View(await peliculas.ToListAsync());
        }




        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var pelicula = await _context.Peliculas
                .FirstOrDefaultAsync(m => m.Id == id);
            if (pelicula == null)
            {
                return NotFound();
            }

            return View(pelicula);
        }

        [HttpPost]
        public async Task<IActionResult> Rate(int id, decimal calificacion)
        {
            var pelicula = await _context.Peliculas.FindAsync(id);
            if (pelicula == null)
            {
                return NotFound();
            }

            var nuevaCalificacion = new Calificaciones { PeliculaId = id, Calificacion = calificacion, FechaCalificacion = DateTime.Now };
            _context.Calificaciones.Add(nuevaCalificacion);
            await _context.SaveChangesAsync();

            return RedirectToAction("Details", new { id = id });
        }


        public async Task<IActionResult> Ranking()
        {
            var ranking = await _context.Calificaciones
                .GroupBy(c => c.PeliculaId)
                .Select(g => new { PeliculaId = g.Key, PromedioCalificacion = g.Average(c => c.Calificacion) })
                .OrderByDescending(r => r.PromedioCalificacion)
                .Take(5)
                .ToListAsync();

            var peliculas = new List<Peliculas>();
            var labels = new List<string>();
            var data = new List<decimal>();
            foreach (var item in ranking)
            {
                var pelicula = await _context.Peliculas.FindAsync(item.PeliculaId);
                if (pelicula != null)
                {
                    peliculas.Add(pelicula);
                    labels.Add(pelicula.Titulo);
                    data.Add(item.PromedioCalificacion);
                }
            }

            ViewBag.Labels = labels;
            ViewBag.Data = data;

            return View(peliculas);
        }



    }


}
