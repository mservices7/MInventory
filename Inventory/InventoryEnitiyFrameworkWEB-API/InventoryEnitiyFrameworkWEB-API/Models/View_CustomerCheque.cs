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
    
    public partial class View_CustomerCheque
    {
        public int Id { get; set; }
        public int Customer_ID { get; set; }
        public string PaymentType { get; set; }
        public string ChequeNumber { get; set; }
        public Nullable<System.DateTime> PaymentDate { get; set; }
        public Nullable<double> TotalAmount { get; set; }
        public Nullable<double> PaidAmount { get; set; }
        public Nullable<double> BalanceAmount { get; set; }
        public Nullable<System.DateTime> IssueDate { get; set; }
        public Nullable<System.DateTime> DepositeDate { get; set; }
        public string DepositeTo { get; set; }
        public string BankName { get; set; }
        public string Note { get; set; }
        public string ChequeStatus { get; set; }
        public Nullable<bool> Status { get; set; }
        public string Name { get; set; }
    }
}
