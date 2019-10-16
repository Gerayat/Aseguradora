using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Venta_de_articulos.Models
{
    public class DanioResolucion
    {
        public string descripcion { get; set; }
        public string resolucion { get; set; }
        public Nullable<decimal> costoReparacion { get; set; }

    }
}