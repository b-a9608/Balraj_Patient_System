using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using Balraj_Patient_System.Bussiness;
using Balraj_Patient_System.Data;

namespace Balraj_Patient_System.Pages.Appointment
{
    public class CreateModel : PageModel
    {
        private readonly Balraj_Patient_System.Data.BalrajDBContext _context;

        public CreateModel(Balraj_Patient_System.Data.BalrajDBContext context)
        {
            _context = context;
        }

        public IActionResult OnGet()
        {
        ViewData["DoctorID"] = new SelectList(_context.Doctors, "ID", "DoctorName");
        ViewData["PatientID"] = new SelectList(_context.Patient, "ID", "PatientName");
            return Page();
        }

        [BindProperty]
        public Bussiness.Appointment Appointment { get; set; }

        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://aka.ms/RazorPagesCRUD.
        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            _context.Appointments.Add(Appointment);
            await _context.SaveChangesAsync();

            return RedirectToPage("./Index");
        }
    }
}
