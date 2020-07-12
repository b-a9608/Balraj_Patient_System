using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Balraj_Patient_System.Bussiness
{
    public class Appointment
    {
        public int ID { get; set; }
        public int DoctorID { get; set; }
        public int PatientID { get; set; }
        public string Timing { get; set; }
        public string AppointmentDate { get; set; }

        public virtual Doctor Doctor { get; set; }
        public virtual Patient Patient { get; set; }
    }
}
