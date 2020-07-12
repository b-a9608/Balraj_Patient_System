using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using Balraj_Patient_System.Bussiness;
using Balraj_Patient_System.Data;

namespace Balraj_Patient_System.Pages.Patient
{
    public class DetailsModel : PageModel
    {
        private readonly Balraj_Patient_System.Data.BalrajDBContext _context;

        public DetailsModel(Balraj_Patient_System.Data.BalrajDBContext context)
        {
            _context = context;
        }

        public Bussiness.Patient Patient { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Patient = await _context.Patient.FirstOrDefaultAsync(m => m.ID == id);

            if (Patient == null)
            {
                return NotFound();
            }
            return Page();
        }
    }
}
