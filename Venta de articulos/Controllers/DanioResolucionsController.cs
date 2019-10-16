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
    public class DanioResolucionsController : Controller
    {
        private dbAseguradoraEntities db = new dbAseguradoraEntities();

        // GET: DanioResolucions
        public ActionResult Index()
        {
            var tbDanioResolucion = db.tbDanioResolucion.Include(t => t.tbDanio).Include(t => t.tbResolucion);
            return View(tbDanioResolucion.ToList());
        }

        // GET: DanioResolucions/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbDanioResolucion tbDanioResolucion = db.tbDanioResolucion.Find(id);
            if (tbDanioResolucion == null)
            {
                return HttpNotFound();
            }
            return View(tbDanioResolucion);
        }

        // GET: DanioResolucions/Create
        public ActionResult Create()
        {
            //ViewBag.codDanio = new SelectList(db.tbDanio, "codDanio", "descripcion");
            //ViewBag.codResolucion = new SelectList(db.tbResolucion, "codResolucion", "resolucion");
            return View();
        }

        // POST: DanioResolucions/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "descripcion,resolucion,costoReparacion")] DanioResolucion danio_resolucion)
        {
            tbDanio danio = new tbDanio() {descripcion=danio_resolucion.descripcion,estado=1 };
            tbResolucion resolucion= new tbResolucion() {resolucion=danio_resolucion.resolucion,estado=1,costoReparacion=danio_resolucion.costoReparacion};
            tbDanioResolucion danioResolucion = new tbDanioResolucion();
            danioResolucion.tbDanio = danio;
            danioResolucion.tbResolucion = resolucion;
                db.tbDanioResolucion.Add(danioResolucion);
                db.SaveChanges();
                return RedirectToAction("Index");
            

            //ViewBag.codDanio = new SelectList(db.tbDanio, "codDanio", "descripcion", tbDanioResolucion.codDanio);
            //ViewBag.codResolucion = new SelectList(db.tbResolucion, "codResolucion", "resolucion", tbDanioResolucion.codResolucion);
           // return View(danio_resolucion);
        }

        // GET: DanioResolucions/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbDanioResolucion tbDanioResolucion = db.tbDanioResolucion.Find(id);
            if (tbDanioResolucion == null)
            {
                return HttpNotFound();
            }
            ViewBag.codDanio = new SelectList(db.tbDanio, "codDanio", "descripcion", tbDanioResolucion.codDanio);
            ViewBag.codResolucion = new SelectList(db.tbResolucion, "codResolucion", "resolucion", tbDanioResolucion.codResolucion);
            return View(tbDanioResolucion);
        }

        // POST: DanioResolucions/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "codDanio,codResolucion,codDanioResolucion")] tbDanioResolucion tbDanioResolucion)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tbDanioResolucion).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.codDanio = new SelectList(db.tbDanio, "codDanio", "descripcion", tbDanioResolucion.codDanio);
            ViewBag.codResolucion = new SelectList(db.tbResolucion, "codResolucion", "resolucion", tbDanioResolucion.codResolucion);
            return View(tbDanioResolucion);
        }

        // GET: DanioResolucions/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbDanioResolucion tbDanioResolucion = db.tbDanioResolucion.Find(id);
            if (tbDanioResolucion == null)
            {
                return HttpNotFound();
            }
            return View(tbDanioResolucion);
        }

        // POST: DanioResolucions/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            tbDanioResolucion tbDanioResolucion = db.tbDanioResolucion.Find(id);
            db.tbDanioResolucion.Remove(tbDanioResolucion);
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
