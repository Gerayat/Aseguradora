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
    public class ReclamosController : Controller
    {
        private dbAseguradoraEntities db = new dbAseguradoraEntities();

        // GET: Reclamos
        public ActionResult Index()
        {
            var tbReclamo = db.tbReclamo.Include(t => t.tbDanioResolucion).Include(t => t.tbSeguro);
            return View(tbReclamo.ToList());
        }

        // GET: Reclamos/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbReclamo tbReclamo = db.tbReclamo.Find(id);
            if (tbReclamo == null)
            {
                return HttpNotFound();
            }
            return View(tbReclamo);
        }

        // GET: Reclamos/Create
        public ActionResult Create()
        {
            var seguro_persona = (from s in db.tbSeguro
                                  join p in db.tbPersona on s.codPersona equals p.codPersona
                                  select new {
                                      codSeguro = s.codSeguro,
                                      seguro_nombre ="["+s.codSeguro+"]"+p.primerNombre + " " + p.primerApellido,
                                     
                                 }).ToList();
            var danio_resolucion = (from d in db.tbDanioResolucion
                                    join r in db.tbDanio on d.codDanio equals r.codDanio
                                    select new {
                                        codDanioResolucion = d.codDanioResolucion,
                                        descripcion = r.descripcion
                                    }).ToList();

            ViewBag.codDanioResolucion = new SelectList(danio_resolucion, "codDanioResolucion", "descripcion");
            ViewBag.codSeguro = new SelectList(seguro_persona, "codSeguro", "seguro_nombre");
            return View();
        }

        // POST: Reclamos/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "codReclamo,codSeguro,codEstado,codDanioResolucion")] tbReclamo tbReclamo)
        {
            if (ModelState.IsValid)
            {
                db.tbReclamo.Add(tbReclamo);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.codDanioResolucion = new SelectList(db.tbDanioResolucion, "codDanioResolucion", "codDanioResolucion", tbReclamo.codDanioResolucion);
            ViewBag.codSeguro = new SelectList(db.tbSeguro, "codSeguro", "codSeguro", tbReclamo.codSeguro);
            return View(tbReclamo);
        }

        // GET: Reclamos/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbReclamo tbReclamo = db.tbReclamo.Find(id);
            if (tbReclamo == null)
            {
                return HttpNotFound();
            }
            ViewBag.codDanioResolucion = new SelectList(db.tbDanioResolucion, "codDanioResolucion", "codDanioResolucion", tbReclamo.codDanioResolucion);
            ViewBag.codSeguro = new SelectList(db.tbSeguro, "codSeguro", "codSeguro", tbReclamo.codSeguro);
            return View(tbReclamo);
        }

        // POST: Reclamos/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "codReclamo,codSeguro,codEstado,codDanioResolucion")] tbReclamo tbReclamo)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tbReclamo).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.codDanioResolucion = new SelectList(db.tbDanioResolucion, "codDanioResolucion", "codDanioResolucion", tbReclamo.codDanioResolucion);
            ViewBag.codSeguro = new SelectList(db.tbSeguro, "codSeguro", "codSeguro", tbReclamo.codSeguro);
            return View(tbReclamo);
        }

        // GET: Reclamos/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbReclamo tbReclamo = db.tbReclamo.Find(id);
            if (tbReclamo == null)
            {
                return HttpNotFound();
            }
            return View(tbReclamo);
        }

        // POST: Reclamos/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            tbReclamo tbReclamo = db.tbReclamo.Find(id);
            db.tbReclamo.Remove(tbReclamo);
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
