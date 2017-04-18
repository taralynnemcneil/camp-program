namespace mdc_daycamp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("camperRegistration")]
    public partial class camperRegistration
    {
        public int camperID { get; set; }

        public int registrationDateID { get; set; }

        public int ID { get; set; }

        public virtual camperProfile camperProfile { get; set; }

        public virtual registrationDate registrationDate { get; set; }
    }
}
