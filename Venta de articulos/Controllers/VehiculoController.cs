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
    public class VehiculoController : Controller
    {
        private dbAseguradoraEntities db = new dbAseguradoraEntities();

        // GET: Vehiculo
        public ActionResult Index()
        {
            return View(db.tbVehiculo.ToList());
        }

        // GET: Vehiculo/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbVehiculo tbVehiculo = db.tbVehiculo.Find(id);
            if (tbVehiculo == null)
            {
                return HttpNotFound();
            }
            return View(tbVehiculo);
        }

        // GET: Vehiculo/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Vehiculo/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "codVehiculo,placa,marca,linea,modelo,color")] tbVehiculo tbVehiculo)
        {
            if (ModelState.IsValid)
            {
                db.tbVehiculo.Add(tbVehiculo);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tbVehiculo);
        }

        // GET: Vehiculo/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbVehiculo tbVehiculo = db.tbVehiculo.Find(id);
            if (tbVehiculo == null)
            {
                return HttpNotFound();
            }
            return View(tbVehiculo);
        }

        // POST: Vehiculo/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "codVehiculo,placa,marca,linea,modelo,color")] tbVehiculo tbVehiculo)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tbVehiculo).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tbVehiculo);
        }

        // GET: Vehiculo/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbVehiculo tbVehiculo = db.tbVehiculo.Find(id);
            if (tbVehiculo == null)
            {
                return HttpNotFound();
            }
            return View(tbVehiculo);
        }

        // POST: Vehiculo/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            tbVehiculo tbVehiculo = db.tbVehiculo.Find(id);
            db.tbVehiculo.Remove(tbVehiculo);
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
