//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AzureInventoryEntityFrameworkWebAPI.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Supplier
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Supplier()
        {
            this.SupplierPayments = new HashSet<SupplierPayment>();
        }
    
        public int Id { get; set; }
        public string Name { get; set; }
        public Nullable<int> City_ID { get; set; }
        public string ContactNumber { get; set; }
        public string ContactNumber2 { get; set; }
        public string EmailID { get; set; }
        public string EmailID2 { get; set; }
        public string VATNumber { get; set; }
        public string TINNumber { get; set; }
        public string Street { get; set; }
        public string Area { get; set; }
        public string Pincode { get; set; }
        public string Note { get; set; }
        public Nullable<bool> Status { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SupplierPayment> SupplierPayments { get; set; }
    }
}