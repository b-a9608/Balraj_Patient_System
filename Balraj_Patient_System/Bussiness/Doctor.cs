using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Balraj_Patient_System.Bussiness
{
    public class Doctor
    {
        public int ID { get; set; }
        public string RegistrationNumber { get; set; }
        public string DoctorName { get; set; }
        public string Qualification { get; set; }
        public string Address { get; set; }
        public string PhoneNumber { get; set; }
        public string Experience { get; set; }
        public virtual ICollection<Appointment> Appointments { get; set; }

    }
}
