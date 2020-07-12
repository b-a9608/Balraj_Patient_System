using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using Balraj_Patient_System.Bussiness;
using Balraj_Patient_System.Data;

namespace Balraj_Patient_System.Pages.Doctor
{
    public class DetailsModel : PageModel
    {
        private readonly Balraj_Patient_System.Data.BalrajDBContext _context;

        public DetailsModel(Balraj_Patient_System.Data.BalrajDBContext context)
        {
            _context = context;
        }

        public Bussiness.Doctor Doctor { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Doctor = await _context.Doctors.FirstOrDefaultAsync(m => m.ID == id);

            if (Doctor == null)
            {
                return NotFound();
            }
            return Page();
        }
    }
}
