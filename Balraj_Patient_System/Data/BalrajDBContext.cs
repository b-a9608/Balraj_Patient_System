using Balraj_Patient_System.Bussiness;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Balraj_Patient_System.Data
{
    public class BalrajDBContext : DbContext
    {
        public BalrajDBContext(DbContextOptions<BalrajDBContext> options)
            : base(options)
        {
        }

        public DbSet<Doctor> Doctors { get; set; }
        public DbSet<Appointment> Appointments { get; set; }
        public DbSet<Balraj_Patient_System.Bussiness.Patient> Patient { get; set; }
    }
}
