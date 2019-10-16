using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Venta_de_articulos.Models;

namespace Venta_de_articulos.Controllers
{
    public class SimuladorController : Controller
    {
        private dbAseguradoraEntities db = new dbAseguradoraEntities();

        [HttpGet]
        public ActionResult Simular()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Simular(int? numero_simulaciones=0)
        {
            //selecccionamos todos los codSeguro y codDanioResolucion existentes;
            var codigos_seguros =  db.tbSeguro.Select(x=>x.codSeguro).ToList();
            var codigos_danio_resolucion = db.tbDanioResolucion.Select(x=>x.codDanioResolucion).ToList();
            //creamos un random
            Random numero_aleatorio = new Random(DateTime.Now.Millisecond) ;
            //segun el numero de reclamos que se desea generar...
            for(int i = 1;i <= numero_simulaciones;i++)
            {
                //elegimos aleatoriamente un seguro (cod_seguro).
                var cod_seguro_aleatorio = codigos_seguros[numero_aleatorio.Next(0, codigos_seguros.Count - 1)];
                var cod_danio_aleatorio= codigos_danio_resolucion[numero_aleatorio.Next(0, codigos_danio_resolucion.Count - 1)]; 
                //creamos el reclamo.
                tbReclamo reclamo = new tbReclamo();
                reclamo.codSeguro = cod_seguro_aleatorio;
                reclamo.codEstado = 1;
                reclamo.codDanioResolucion = cod_danio_aleatorio;
                db.tbReclamo.Add(reclamo); 
            }
            db.SaveChanges();
            return RedirectToAction("Index","Reclamos");
        }
    }
}