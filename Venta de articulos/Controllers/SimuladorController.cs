﻿using System;
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
        private static List<tbReclamo> reclamos = new List<tbReclamo>();
        [HttpGet]
        public ActionResult Simular()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Simular(int? numero_simulaciones=0)
        {
            int horas = 4;
            Random tasaLlegada = new Random();
            int minutos = 60 / tasaLlegada.Next(15, 30);
            DateTime horaReclamo = DateTime.Now;
            int contadorHoras = horaReclamo.Hour;
            int horaInicio = horaReclamo.Hour;
            //selecccionamos todos los codSeguro y codDanioResolucion existentes;
            var codigos_seguros =  db.tbSeguro.Select(x=>x.codSeguro).ToList();
            var codigos_danio_resolucion = db.tbDanioResolucion.Select(x=>x.codDanioResolucion).ToList();
            //creamos un random
            Random numero_aleatorio = new Random(DateTime.Now.Millisecond) ;
            int i = 1;
            //segun el numero de reclamos que se desea generar...
            while((horaReclamo.Hour - horaInicio) <= horas)
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
                reclamo.fecha = horaReclamo;
                reclamo.tbSeguro = db.tbSeguro.Find(reclamo.codSeguro);
                reclamo.tbDanioResolucion = db.tbDanioResolucion.Find(reclamo.codDanioResolucion);
                horaReclamo = horaReclamo.AddMinutes(minutos);
                //db.tbReclamo.Add(reclamo);
                reclamos.Add(reclamo);
                if (contadorHoras < horaReclamo.Hour)
                {
                    //si la hora ya cambio, hacer un nuevo random para el número de reclamos que se realizarán en la nueva hora
                    minutos = 60 / tasaLlegada.Next(15, 30);
                    contadorHoras = horaReclamo.Hour;
                }
                i++;
            }
            //db.SaveChanges();
            return RedirectToAction("FinSimulacion", "Simulador", new { horaInicio = horaInicio, horas = horas });
        }

        [HttpGet]
        public ActionResult FinSimulacion(int horaInicio, int horas)
        {
            List<int> llegadasHora = new List<int>();
            for (int i = 0; i < horas; i++)
            {
                reclamos.Where(t => t.fecha.)
            }
            return View(reclamos);
        }
    }
}