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
    
    public partial class User
    {
        public int Id { get; set; }
        public string UserName { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public Nullable<int> Role_ID { get; set; }
        public Nullable<int> Company_ID { get; set; }
        public string ContactNumber { get; set; }
        public string EmailID { get; set; }
        public Nullable<System.DateTime> BirthDay { get; set; }
        public Nullable<bool> Status { get; set; }
    
        public virtual RoleOfUser RoleOfUser { get; set; }
    }
}
