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
    
    public partial class PaymentSupplier
    {
        public int Payments_Id { get; set; }
        public int Suppliers_Id { get; set; }
    
        public virtual Payment Payment { get; set; }
    }
}
