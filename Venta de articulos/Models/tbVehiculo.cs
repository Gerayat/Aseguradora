//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Venta_de_articulos.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tbVehiculo
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tbVehiculo()
        {
            this.tbSeguro = new HashSet<tbSeguro>();
        }
    
        public int codVehiculo { get; set; }
        public string placa { get; set; }
        public string linea { get; set; }
        public Nullable<int> modelo { get; set; }
        public string color { get; set; }
        public int cod_marca { get; set; }
    
        public virtual tbMarca tbMarca { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbSeguro> tbSeguro { get; set; }
    }
}
