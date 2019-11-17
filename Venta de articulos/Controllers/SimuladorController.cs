﻿using System;
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
            Random tasaLlegada = new Random(DateTime.Now.Millisecond);
          
            int minutos = 60 / tasaLlegada.Next(1, 10); //los 60 minutos dividios por el número aleaotrio de llegadas
            DateTime horaReclamo = DateTime.Now;
              int contadorHoras = horaReclamo.Hour; //almacena las horas de una en una
              int horaInicio = horaReclamo.Hour;
           
            //selecccionamos todos los codSeguro y codDanioResolucion existentes;
            var codigos_seguros =  db.tbSeguro.Select(x=>x.codSeguro).ToList();
            var codigos_danio_resolucion = db.tbDanioResolucion.Select(x=>x.codDanioResolucion).ToList();
            //creamos un random
            Random numero_aleatorio = new Random(DateTime.Now.Millisecond);
            int i = 1;

         
            while ((horaReclamo.Hour - horaInicio) <= horas)
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
                 horaReclamo=horaReclamo.AddMinutes(minutos); //se agregan los minutos a la fecha para avanzar
                //db.tbReclamo.Add(reclamo);
                reclamos.Add(reclamo);
                if (contadorHoras < horaReclamo.Hour)
                {
                    //si la hora ya cambio, hacer un nuevo random para el número de reclamos que se realizarán en la nueva hora
                    minutos = 60 / tasaLlegada.Next(1, 10);
                    contadorHoras = horaReclamo.Hour; //se actualiza el contador a la nueva hora
                }
                i++;
            }
            //db.SaveChanges();
            return RedirectToAction("FinSimulacion", "Simulador", new {page=1, horaInicio = horaInicio, horas = horas });
        }

        [HttpGet]
        public ActionResult FinSimulacion(int? page,int horaInicio, int horas)
        {
            List<int> llegadasHora = new List<int>();
       
            for (int i = 0; i < horas; i++)
            {
                //aqui quiero sacar el número de llegadas por cada hora de trabajo pero no logre, pense que podia
                //de la forma que esta en el código siguiente pero no me dejó
                 int numReclamos = reclamos.Where(t => t.fecha.Hour == (i+horaInicio)).Count();
                llegadasHora.Add(numReclamos);
               
            }
            // una vez con todas las horas almacenadas, la tasa de llegada es la siguiente
            double tasaLlegada = llegadasHora.Average();
            // se le muestra al usuario en la pantalla y se le pide la tasa de servicio, ya con eso solo hay
            // que hacer los calculos, podria hacerse con javascript para no recargar la págnia.
            ViewBag.tasaLlegada = tasaLlegada;
            ViewBag.inicio = horaInicio;
            ViewBag.horas = horas;
            ViewBag.TotalRegistros = reclamos.Count;
            int pageSize = 10;
            int pageNumber =(page ?? 1);
            ViewBag.page = pageNumber;
            ViewBag.codDanio = new SelectList(db.tbDanio, "codDanio", "descripcion");
            var marcas = (from v in db.tbVehiculo
                          join m in reclamos on v.cod_marca equals m.tbSeguro.tbVehiculo.tbMarca.cod_marca
                          select new
                          {
                              cod_marca = m.tbSeguro.tbVehiculo.tbMarca.cod_marca,
                              marca = m.tbSeguro.tbVehiculo.tbMarca.marca
                          }).ToList();
            var danios= (from d in db.tbDanio select new { cod_danio=d.codDanio, danio=d.descripcion }).ToList(); 
            ViewBag.marca = new SelectList(marcas, "cod_marca", "marca");
            ViewBag.danio = new SelectList(danios, "cod_danio", "danio");


            return View(reclamos.ToPagedList(pageNumber, pageSize));       
        }
    }
}