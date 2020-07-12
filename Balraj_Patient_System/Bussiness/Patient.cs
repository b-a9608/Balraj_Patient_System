using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Balraj_Patient_System.Bussiness
{
    public class Patient
    {
        public int ID { get; set; }
        public string RegistrationNumber { get; set; }
        public string PatientName { get; set; }
        public string FatherName { get; set; }
        public int Age { get; set; }
        public string Address { get; set; }
        public string HealthIssue { get; set; }
        public virtual ICollection<Appointment> Appointments { get; set; }

    }
}
