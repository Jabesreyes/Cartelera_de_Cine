using Cartelera.Data;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace Cartelera.Controllers
{
    public class CalificacionesController : Controller
    {
        private readonly ApplicationDbContext _context;

        public CalificacionesController(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<IActionResult> Index()
        {
            var peliculas = await _context.Peliculas.ToListAsync();
            return View(peliculas);
        }
    }
}
