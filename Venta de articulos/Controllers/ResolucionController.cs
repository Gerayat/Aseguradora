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
    public class ResolucionController : Controller
    {
        private dbAseguradoraEntities db = new dbAseguradoraEntities();

        // GET: Resolucion
        public ActionResult Index()
        {
            var tbResolucion = db.tbResolucion.Include(t => t.tbReclamo);
            return View(tbResolucion.ToList());
        }

        // GET: Resolucion/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbResolucion tbResolucion = db.tbResolucion.Find(id);
            if (tbResolucion == null)
            {
                return HttpNotFound();
            }
            return View(tbResolucion);
        }

        // GET: Resolucion/Create
        public ActionResult Create()
        {
            ViewBag.codReclamo = new SelectList(db.tbReclamo, "codReclamo", "descripción");
            return View();
        }

        // POST: Resolucion/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "codResolucion,codReclamo,resolucion,estado")] tbResolucion tbResolucion)
        {
            if (ModelState.IsValid)
            {
                db.tbResolucion.Add(tbResolucion);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.codReclamo = new SelectList(db.tbReclamo, "codReclamo", "descripción", tbResolucion.codReclamo);
            return View(tbResolucion);
        }

        // GET: Resolucion/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbResolucion tbResolucion = db.tbResolucion.Find(id);
            if (tbResolucion == null)
            {
                return HttpNotFound();
            }
            ViewBag.codReclamo = new SelectList(db.tbReclamo, "codReclamo", "descripción", tbResolucion.codReclamo);
            return View(tbResolucion);
        }

        // POST: Resolucion/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "codResolucion,codReclamo,resolucion,estado")] tbResolucion tbResolucion)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tbResolucion).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.codReclamo = new SelectList(db.tbReclamo, "codReclamo", "descripción", tbResolucion.codReclamo);
            return View(tbResolucion);
        }

        // GET: Resolucion/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbResolucion tbResolucion = db.tbResolucion.Find(id);
            if (tbResolucion == null)
            {
                return HttpNotFound();
            }
            return View(tbResolucion);
        }

        // POST: Resolucion/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            tbResolucion tbResolucion = db.tbResolucion.Find(id);
            db.tbResolucion.Remove(tbResolucion);
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
