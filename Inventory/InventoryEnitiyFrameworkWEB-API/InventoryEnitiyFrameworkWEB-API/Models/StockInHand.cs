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
    
    public partial class StockInHand
    {
        public int Id { get; set; }
        public string ItemName { get; set; }
        public Nullable<int> Unit { get; set; }
        public Nullable<int> SalesPrice { get; set; }
        public Nullable<int> CurrentStock { get; set; }
    }
}
