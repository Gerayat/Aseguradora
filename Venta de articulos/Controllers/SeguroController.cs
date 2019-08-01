using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Venta_de_articulos.Models;

namespace Venta_de_articulos.Controllers
{
    public class SeguroController : Controller
    {
        private dbAseguradoraEntities db = new dbAseguradoraEntities();

        // GET: Seguro
        public ActionResult Index()
        {
            var tbSeguro = db.tbSeguro.Include(t => t.tbPersona).Include(t => t.tbVehiculo);
            return View(tbSeguro.ToList());
        }

        // GET: Seguro/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbSeguro tbSeguro = db.tbSeguro.Find(id);
            if (tbSeguro == null)
            {
                return HttpNotFound();
            }
            return View(tbSeguro);
        }

        // GET: Seguro/Create
        public ActionResult Create()
        {
            var personas = db.tbPersona.Select(x => new {
                codPersona = x.codPersona,
                nombrecompleto = x.primerNombre +" "+ x.segundoNombre +" "+ x.primerApellido +" "+ x.segundoApellido
            }).ToList();
            var vehiculos = db.tbVehiculo.Select(v=>new {
                codVehiculo=v.codVehiculo,
                descripcion=v.placa+" "+v.marca+" "+v.color
            }).ToList();

            ViewBag.codPersona = new SelectList(personas, "codPersona", "nombrecompleto");
            ViewBag.codVehiculo = new SelectList(vehiculos, "codVehiculo", "descripcion");
            return View();
        }

        // POST: Seguro/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "codSeguro,codPersona,codVehiculo,codEstado,pagoMensual,deducible")] tbSeguro tbSeguro)
        {
            if (ModelState.IsValid)
            {
                tbSeguro.fechaCreación = DateTime.Now;
                db.tbSeguro.Add(tbSeguro);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            var personas = db.tbPersona.Select(x => new {
                codPersona = x.codPersona,
                nombrecompleto = x.primerNombre + " " + x.segundoNombre + " " + x.primerApellido + " " + x.segundoApellido
            }).ToList();
            var vehiculos = db.tbVehiculo.Select(v => new {
                codVehiculo = v.codVehiculo,
                descripcion = v.placa + " " + v.marca + " " + v.color
            }).ToList();

            ViewBag.codPersona = new SelectList(personas, "codPersona", "nombrecompleto");
            ViewBag.codVehiculo = new SelectList(vehiculos, "codVehiculo", "descripcion");

            //ViewBag.codPersona = new SelectList(db.tbPersona, "codPersona", "primerNombre", tbSeguro.codPersona);
            //ViewBag.codVehiculo = new SelectList(db.tbVehiculo, "codVehiculo", "placa", tbSeguro.codVehiculo);
            return View(tbSeguro);
        }

        // GET: Seguro/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbSeguro tbSeguro = db.tbSeguro.Find(id);
            if (tbSeguro == null)
            {
                return HttpNotFound();
            }
            //ViewBag.codPersona = new SelectList(db.tbPersona, "codPersona", "primerNombre", tbSeguro.codPersona);
            //ViewBag.codVehiculo = new SelectList(db.tbVehiculo, "codVehiculo", "placa", tbSeguro.codVehiculo);
            var personas = db.tbPersona.Select(x => new {
                codPersona = x.codPersona,
                nombrecompleto = x.primerNombre + " " + x.segundoNombre + " " + x.primerApellido + " " + x.segundoApellido
            }).ToList();
            var vehiculos = db.tbVehiculo.Select(v => new {
                codVehiculo = v.codVehiculo,
                descripcion = v.placa + " " + v.marca + " " + v.color
            }).ToList();

            ViewBag.codPersona = new SelectList(personas, "codPersona", "nombrecompleto");
            ViewBag.codVehiculo = new SelectList(vehiculos, "codVehiculo", "descripcion");

            return View(tbSeguro);
        }

        // POST: Seguro/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "codSeguro,codPersona,codVehiculo,codEstado,pagoMensual,fechaCreación,deducible")] tbSeguro tbSeguro)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tbSeguro).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            //ViewBag.codPersona = new SelectList(db.tbPersona, "codPersona", "primerNombre", tbSeguro.codPersona);
            //ViewBag.codVehiculo = new SelectList(db.tbVehiculo, "codVehiculo", "placa", tbSeguro.codVehiculo);
            var personas = db.tbPersona.Select(x => new {
                codPersona = x.codPersona,
                nombrecompleto = x.primerNombre + " " + x.segundoNombre + " " + x.primerApellido + " " + x.segundoApellido
            }).ToList();
            var vehiculos = db.tbVehiculo.Select(v => new {
                codVehiculo = v.codVehiculo,
                descripcion = v.placa + " " + v.marca + " " + v.color
            }).ToList();

            ViewBag.codPersona = new SelectList(personas, "codPersona", "nombrecompleto");
            ViewBag.codVehiculo = new SelectList(vehiculos, "codVehiculo", "descripcion");
            return View(tbSeguro);
        }

        // GET: Seguro/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbSeguro tbSeguro = db.tbSeguro.Find(id);
            if (tbSeguro == null)
            {
                return HttpNotFound();
            }
            return View(tbSeguro);
        }

        // POST: Seguro/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            tbSeguro tbSeguro = db.tbSeguro.Find(id);
            db.tbSeguro.Remove(tbSeguro);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
