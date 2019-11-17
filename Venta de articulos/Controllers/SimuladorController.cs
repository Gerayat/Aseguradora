using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Venta_de_articulos.Models;
using PagedList;

namespace Venta_de_articulos.Controllers
{
    public class SimuladorController : Controller
    {
        private dbAseguradoraEntities db = new dbAseguradoraEntities();
        private static List<tbReclamo> reclamos = new List<tbReclamo>();

        [HttpGet]
        public ActionResult Simular()
        {   //limpiamos el array, si se omite, se acumula los registros de cada simulacion.
            reclamos.Clear();
            return View();
        }

        [HttpPost]
        public ActionResult Simular(int horas)
        {
            int tasaMediaMaximaLlegada = 8; //Variable de configuración: configura el rango máximo del random
            int tasaMediaMinimaLlegada = 1; //Variable de configuración: configura el rango mínimo del random
            Random tasaLlegada = new Random(DateTime.Now.Millisecond);
            DateTime horaReclamo = horaReclamo = new DateTime(2019, 01, 01, 0, 0, 0);
            int minutos = 60 / tasaLlegada.Next(tasaMediaMinimaLlegada, tasaMediaMaximaLlegada); //los 60 minutos dividios por el número aleaotrio de llegadas
            int contadorHoras = 0; //almacena las horas de una en una
            int ultimaHora = horaReclamo.Hour;

            //selecccionamos todos los codSeguro y codDanioResolucion existentes;
            var codigos_seguros =  db.tbSeguro.Select(x=>x.codSeguro).ToList();
            var codigos_danio_resolucion = db.tbDanioResolucion.Select(x=>x.codDanioResolucion).ToList();

            Random numero_aleatorio = new Random(DateTime.Now.Millisecond);
            int i = 1;
            while (contadorHoras < horas)
            {
                //elegimos aleatoriamente un seguro (cod_seguro).
                var cod_seguro_aleatorio = codigos_seguros[numero_aleatorio.Next(0, codigos_seguros.Count - 1)];
                var cod_danio_aleatorio= codigos_danio_resolucion[numero_aleatorio.Next(0, codigos_danio_resolucion.Count - 1)]; 
                //creamos el reclamo.
                tbReclamo reclamo = new tbReclamo();
                reclamo.codReclamo = i;
                reclamo.codSeguro = cod_seguro_aleatorio;
                reclamo.codEstado = 1;
                reclamo.codDanioResolucion = cod_danio_aleatorio;
                reclamo.fecha = horaReclamo; //Se guarda fecha en la que se realizó el reclamo
                reclamo.tbSeguro = db.tbSeguro.Find(reclamo.codSeguro);
                reclamo.tbDanioResolucion = db.tbDanioResolucion.Find(reclamo.codDanioResolucion);
                horaReclamo = horaReclamo.AddMinutes(minutos); //se agregan los minutos a la fecha para avanzar
                reclamos.Add(reclamo); // Se agrega a la lista

                if (ultimaHora != horaReclamo.Hour)
                {
                    //si la hora ya cambio, hacer un nuevo random para el número de reclamos que se realizarán en la nueva hora
                    if (horaReclamo.Hour >= 6 && horaReclamo.Hour <= 18)
                        minutos = 60 / tasaLlegada.Next(tasaMediaMinimaLlegada + 3, (tasaMediaMaximaLlegada + 5));
                    else
                        minutos = 60 / tasaLlegada.Next(tasaMediaMinimaLlegada, tasaMediaMaximaLlegada);
                    contadorHoras++;
                    ultimaHora = horaReclamo.Hour;
                }
                i++;
            }
            return RedirectToAction("FinSimulacion", "Simulador", new {page=1, horas = horas });
        }

        [HttpGet]
        public ActionResult FinSimulacion(int? page, int horas)
        {
            List<string> lstHoras = new List<string>(); //lista para enviar a chartjs como eje X
            List<int> llegadasHora = new List<int>(); //lista para enviar a chartjs como eje Y

            for (int i = 0; i < horas; i++)
            {
                int numReclamos = reclamos.Where(t => t.fecha.Hour == (i)).Count();
                llegadasHora.Add(numReclamos);
                if (horas <= 24)
                    lstHoras.Add("Hora " + (i + 1).ToString());  
                else
                    lstHoras.Add((i + 1).ToString());
            }
            // una vez con todas las horas almacenadas, la tasa de llegada es la siguiente
            double tasaLlegada = llegadasHora.Average();

            ViewBag.llegadasHora = llegadasHora;
            ViewBag.lstHoras = lstHoras;
            ViewBag.tasaLlegada = tasaLlegada;
            ViewBag.horas = horas;
            ViewBag.TotalRegistros = reclamos.Count;
            int pageSize = 10;
            int pageNumber =(page ?? 1);
            ViewBag.page = pageNumber;

            return View(reclamos.ToPagedList(pageNumber, pageSize));       
        }
    }
}