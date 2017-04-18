namespace mdc_daycamp
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class muskokaEntites : DbContext
    {
        public muskokaEntites()
            : base("name=muskokaEntites")
        {
        }

        public virtual DbSet<camperGuardian> camperGuardians { get; set; }
        public virtual DbSet<camperProfile> camperProfiles { get; set; }
        public virtual DbSet<camperRegistration> camperRegistrations { get; set; }
        public virtual DbSet<guardian> guardians { get; set; }
        public virtual DbSet<payment> payments { get; set; }
        public virtual DbSet<registrationDate> registrationDates { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<camperProfile>()
                .Property(e => e.firstName)
                .IsUnicode(false);

            modelBuilder.Entity<camperProfile>()
                .Property(e => e.lastName)
                .IsUnicode(false);

            modelBuilder.Entity<camperProfile>()
                .Property(e => e.familyName)
                .IsUnicode(false);

            modelBuilder.Entity<camperProfile>()
                .Property(e => e.rate)
                .IsUnicode(false);

            modelBuilder.Entity<camperProfile>()
                .Property(e => e.address)
                .IsUnicode(false);

            modelBuilder.Entity<camperProfile>()
                .Property(e => e.contactName)
                .IsUnicode(false);

            modelBuilder.Entity<camperProfile>()
                .Property(e => e.contactRelation)
                .IsUnicode(false);

            modelBuilder.Entity<camperProfile>()
                .Property(e => e.contactNumber)
                .IsUnicode(false);

            modelBuilder.Entity<camperProfile>()
                .Property(e => e.importantNotes)
                .IsUnicode(false);

            modelBuilder.Entity<camperProfile>()
                .HasMany(e => e.camperGuardians)
                .WithRequired(e => e.camperProfile)
                .HasForeignKey(e => e.camperID)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<camperProfile>()
                .HasMany(e => e.camperRegistrations)
                .WithRequired(e => e.camperProfile)
                .HasForeignKey(e => e.camperID)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<camperProfile>()
                .HasMany(e => e.payments)
                .WithRequired(e => e.camperProfile)
                .HasForeignKey(e => e.camperID)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<guardian>()
                .Property(e => e.firstName)
                .IsUnicode(false);

            modelBuilder.Entity<guardian>()
                .Property(e => e.lastName)
                .IsUnicode(false);

            modelBuilder.Entity<guardian>()
                .HasMany(e => e.camperGuardians)
                .WithRequired(e => e.guardian)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<payment>()
                .Property(e => e.date)
                .IsUnicode(false);

            modelBuilder.Entity<payment>()
                .Property(e => e.amount)
                .IsUnicode(false);

            modelBuilder.Entity<payment>()
                .Property(e => e.paymentType)
                .IsUnicode(false);

            modelBuilder.Entity<registrationDate>()
                .Property(e => e.date)
                .IsUnicode(false);

            modelBuilder.Entity<registrationDate>()
                .Property(e => e.signInTime)
                .IsUnicode(false);

            modelBuilder.Entity<registrationDate>()
                .Property(e => e.signOutTime)
                .IsUnicode(false);

            modelBuilder.Entity<registrationDate>()
                .Property(e => e.signedInBy)
                .IsUnicode(false);

            modelBuilder.Entity<registrationDate>()
                .Property(e => e.signedOutBy)
                .IsUnicode(false);

            modelBuilder.Entity<registrationDate>()
                .HasMany(e => e.camperRegistrations)
                .WithRequired(e => e.registrationDate)
                .WillCascadeOnDelete(false);
        }
    }
}
