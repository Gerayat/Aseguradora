using System;
using System.Collections.Generic;
using System.Linq;
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
            List<int> lstHoras = Enumerable.Range(1, 24).ToList(); //lista para enviar a chartjs como eje X
            List<int> llegadasHoras = new List<int>(); //lista que almacena el número de llegadas sin importar dias (sirve para obtener la tasa de llegadas
            List<List<int>> llegadasDia = new List<List<int>>(); //lista que almacena las listas por dias
            int dias = (horas / 24) + 1;
            for (int dia = 1; dia <= dias; dia++)
            {
                List<int> llegadasDiaHora = new List<int>(); //lista para enviar a chartjs como eje Y
                int numLlegadas = 0;
                int hora = 0;
                do
                {
                    numLlegadas = reclamos.Where(t => t.fecha.Day == dia && t.fecha.Hour == hora).Count();
                    if (numLlegadas > 0)
                    {
                        llegadasDiaHora.Add(numLlegadas);
                        llegadasHoras.Add(numLlegadas);
                    }
                    hora++;
                } while (numLlegadas > 0 && hora <= 24);
                if (llegadasDiaHora.Count > 0)
                {
                    llegadasDia.Add(llegadasDiaHora);
                }
            }

            // una vez con todas las horas almacenadas, la tasa de llegada es la siguiente
            double tasaLlegada = llegadasHoras.Average();
            ViewBag.llegadasDia = llegadasDia;
            ViewBag.lstHoras = lstHoras;
            ViewBag.tasaLlegada = tasaLlegada;
            ViewBag.horas = horas;
            ViewBag.TotalRegistros = reclamos.Count;
            int pageSize = 10;
            int pageNumber =(page ?? 1);
            ViewBag.page = pageNumber;
            //llenar combos.
            var danios = (from c in reclamos select c.tbDanioResolucion.tbDanio).Distinct().ToList();
            ViewBag.codDanio = new SelectList(danios, "codDanio", "descripcion");
            var marcas = (from m in reclamos select m.tbSeguro.tbVehiculo.tbMarca).Distinct().ToList();
            ViewBag.cod_marca = new SelectList(marcas, "cod_marca", "marca");
            return View(reclamos.ToPagedList(pageNumber, pageSize));       
        }
        //recibe dos arrays de danios y marcas que estan encapsulados en un objeto MarcaDanio, 
        //devuelve una matriz de frecuencias
        [HttpPost]
        public JsonResult DaniosPMarca(MarcasDanios marcasdanios)
        {
           List<List<int>> matriz_frecuencia = new List<List<int>>();
            List<int> filas;
            foreach (var m in marcasdanios.marcas)
                {

                filas = new List<int>();

                    foreach (var d in marcasdanios.danios)
                        {
                             var md = from r in reclamos
                                 where r.tbDanioResolucion.tbDanio.codDanio == d.codDanio &&
                                   r.tbSeguro.tbVehiculo.tbMarca.cod_marca == m.cod_marca
                              select r;
                            var frecuencia = md.Count();
                            filas.Add(frecuencia);      
                        }
                matriz_frecuencia.Add(filas);
            }

            return Json(matriz_frecuencia);
        }
        
        [HttpPost]
        public double GetValorTabla(GradoSignificacia gs)
        {
            clsTablaChi tchi = new clsTablaChi();

            var resp = tchi.getValorTabla(gs.grados_libertad,gs.nivel_significacia);
            return resp;
        }
    }
}