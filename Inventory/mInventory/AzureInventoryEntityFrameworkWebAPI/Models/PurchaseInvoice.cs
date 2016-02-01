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
    
    public partial class PurchaseInvoice
    {
        public int Id { get; set; }
        public string SupplyerName { get; set; }
        public Nullable<int> City_ID { get; set; }
        public string ContactNumber { get; set; }
        public Nullable<System.DateTime> InvoiceDate { get; set; }
        public Nullable<System.DateTime> DueDate { get; set; }
        public string Note { get; set; }
        public Nullable<bool> PurchaseReturn { get; set; }
        public Nullable<int> TotalTaxAmount { get; set; }
        public Nullable<int> ShippingCost { get; set; }
        public Nullable<int> Amount { get; set; }
        public Nullable<int> RoundOff { get; set; }
        public Nullable<int> NetAmount { get; set; }
        public Nullable<bool> Status { get; set; }
    
        public virtual City City { get; set; }
    }
}
