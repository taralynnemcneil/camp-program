namespace mdc_daycamp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("guardian")]
    public partial class guardian
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public guardian()
        {
            camperGuardians = new HashSet<camperGuardian>();
        }

        public int ID { get; set; }

        [Required]
        [StringLength(255)]
        public string firstName { get; set; }

        [Required]
        [StringLength(255)]
        public string lastName { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<camperGuardian> camperGuardians { get; set; }
    }
}
