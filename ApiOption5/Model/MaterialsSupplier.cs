//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ApiOption5.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class MaterialsSupplier
    {
        public int ID { get; set; }
        public int IDMaterials { get; set; }
        public int IDSupplier { get; set; }
    
        public virtual Materials Materials { get; set; }
        public virtual Supplier Supplier { get; set; }
    }
}
