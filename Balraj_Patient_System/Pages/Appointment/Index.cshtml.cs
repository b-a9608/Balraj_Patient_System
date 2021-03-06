﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using Balraj_Patient_System.Bussiness;
using Balraj_Patient_System.Data;

namespace Balraj_Patient_System.Pages.Appointment
{
    public class IndexModel : PageModel
    {
        private readonly Balraj_Patient_System.Data.BalrajDBContext _context;

        public IndexModel(Balraj_Patient_System.Data.BalrajDBContext context)
        {
            _context = context;
        }

        public IList<Bussiness.Appointment> Appointment { get;set; }

        public async Task OnGetAsync()
        {
            Appointment = await _context.Appointments
                .Include(a => a.Doctor)
                .Include(a => a.Patient).ToListAsync();
        }
    }
}
