//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace School.Entities
{
    using System;
    using System.Collections.Generic;
    
    public partial class Sale
    {
        public int SaleID { get; set; }
        public int ProductID { get; set; }
        public System.TimeSpan TimeSale { get; set; }
        public int EmployeeID { get; set; }
    
        public virtual Employee Employee { get; set; }
        public virtual Product Product { get; set; }
    }
}
