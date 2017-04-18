namespace mdc_daycamp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("registrationDate")]
    public partial class registrationDate
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public registrationDate()
        {
            camperRegistrations = new HashSet<camperRegistration>();
        }

        public int ID { get; set; }

        [StringLength(255)]
        public string date { get; set; }

        [StringLength(255)]
        public string signInTime { get; set; }

        [StringLength(255)]
        public string signOutTime { get; set; }

        [StringLength(255)]
        public string signedInBy { get; set; }

        [StringLength(255)]
        public string signedOutBy { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<camperRegistration> camperRegistrations { get; set; }
    }
}
