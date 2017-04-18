namespace mdc_daycamp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("camperProfile")]
    public partial class camperProfile
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public camperProfile()
        {
            camperGuardians = new HashSet<camperGuardian>();
            camperRegistrations = new HashSet<camperRegistration>();
            payments = new HashSet<payment>();
        }

        public int ID { get; set; }

        [Required]
        [StringLength(255)]
        public string firstName { get; set; }

        [Required]
        [StringLength(255)]
        public string lastName { get; set; }

        [Required]
        [StringLength(255)]
        public string familyName { get; set; }

        public int age { get; set; }

        [Required]
        [StringLength(255)]
        public string rate { get; set; }

        [Required]
        [StringLength(255)]
        public string address { get; set; }

        [Required]
        [StringLength(255)]
        public string contactName { get; set; }

        [Required]
        [StringLength(255)]
        public string contactRelation { get; set; }

        [Required]
        [StringLength(255)]
        public string contactNumber { get; set; }

        public string importantNotes { get; set; }

        [MaxLength(1)]
        public byte[] photo { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<camperGuardian> camperGuardians { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<camperRegistration> camperRegistrations { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<payment> payments { get; set; }
    }
}
