//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace InventoryEnitiyFrameworkWEB_API.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class PartyPaymnet
    {
        public int Id { get; set; }
        public string PartyName { get; set; }
        public Nullable<int> City_ID { get; set; }
        public string ContactNumber { get; set; }
        public Nullable<int> Amount { get; set; }
        public string PaymentType { get; set; }
        public Nullable<System.DateTime> PaymentDate { get; set; }
        public string Note { get; set; }
        public Nullable<bool> Status { get; set; }
    
        public virtual City City { get; set; }
    }
}
