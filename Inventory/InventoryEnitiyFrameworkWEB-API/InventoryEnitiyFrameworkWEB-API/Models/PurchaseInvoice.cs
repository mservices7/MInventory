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
    
    public partial class PurchaseInvoice
    {
        public int Id { get; set; }
        public Nullable<int> Supplier_ID { get; set; }
        public string SupplyerName { get; set; }
        public Nullable<int> City_ID { get; set; }
        public string ContactNumber { get; set; }
        public Nullable<System.DateTime> InvoiceDate { get; set; }
        public Nullable<System.DateTime> DueDate { get; set; }
        public string Note { get; set; }
        public Nullable<bool> PurchaseReturn { get; set; }
        public Nullable<double> TotalTaxAmount { get; set; }
        public Nullable<double> ShippingCost { get; set; }
        public Nullable<double> Amount { get; set; }
        public Nullable<double> RoundOff { get; set; }
        public Nullable<double> NetAmount { get; set; }
        public Nullable<bool> Status { get; set; }
    
        public virtual City City { get; set; }
        public virtual Supplier Supplier { get; set; }
    }
}
