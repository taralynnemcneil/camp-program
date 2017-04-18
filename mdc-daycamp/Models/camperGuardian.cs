namespace mdc_daycamp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("camperGuardian")]
    public partial class camperGuardian
    {
        public int camperID { get; set; }

        public int guardianID { get; set; }

        public int ID { get; set; }

        public virtual camperProfile camperProfile { get; set; }

        public virtual guardian guardian { get; set; }
    }
}
