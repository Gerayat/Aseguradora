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
    public class DanioController : Controller
    {
        private dbAseguradoraEntities db = new dbAseguradoraEntities();

        // GET: Danio
        public ActionResult Index()
        {
            var tbDanio = db.tbDanio.Include(t => t.tbReclamo);
            return View(tbDanio.ToList());
        }

        // GET: Danio/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbDanio tbDanio = db.tbDanio.Find(id);
            if (tbDanio == null)
            {
                return HttpNotFound();
            }
            return View(tbDanio);
        }

        // GET: Danio/Create
        public ActionResult Create()
        {
            ViewBag.codReclamo = new SelectList(db.tbReclamo, "codReclamo", "descripción");
            return View();
        }

        // POST: Danio/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "codDanio,codReclamo,descripcion,costoReparacion,estado")] tbDanio tbDanio)
        {
            if (ModelState.IsValid)
            {
                db.tbDanio.Add(tbDanio);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.codReclamo = new SelectList(db.tbReclamo, "codReclamo", "descripción", tbDanio.codReclamo);
            return View(tbDanio);
        }

        // GET: Danio/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbDanio tbDanio = db.tbDanio.Find(id);
            if (tbDanio == null)
            {
                return HttpNotFound();
            }
            ViewBag.codReclamo = new SelectList(db.tbReclamo, "codReclamo", "descripción", tbDanio.codReclamo);
            return View(tbDanio);
        }

        // POST: Danio/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "codDanio,codReclamo,descripcion,costoReparacion,estado")] tbDanio tbDanio)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tbDanio).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.codReclamo = new SelectList(db.tbReclamo, "codReclamo", "descripción", tbDanio.codReclamo);
            return View(tbDanio);
        }

        // GET: Danio/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbDanio tbDanio = db.tbDanio.Find(id);
            if (tbDanio == null)
            {
                return HttpNotFound();
            }
            return View(tbDanio);
        }

        // POST: Danio/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            tbDanio tbDanio = db.tbDanio.Find(id);
            db.tbDanio.Remove(tbDanio);
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
