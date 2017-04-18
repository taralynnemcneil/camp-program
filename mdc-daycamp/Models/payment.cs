namespace mdc_daycamp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("payment")]
    public partial class payment
    {
        public int ID { get; set; }

        [Required]
        [StringLength(255)]
        public string date { get; set; }

        [Required]
        [StringLength(255)]
        public string amount { get; set; }

        [Required]
        [StringLength(255)]
        public string paymentType { get; set; }

        public int camperID { get; set; }

        public virtual camperProfile camperProfile { get; set; }
    }
}
