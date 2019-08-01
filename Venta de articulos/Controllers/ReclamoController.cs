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
    public class ReclamoController : Controller
    {
        private dbAseguradoraEntities db = new dbAseguradoraEntities();

        // GET: Reclamo
        public ActionResult Index()
        {
            var tbReclamo = db.tbReclamo.Include(t => t.tbSeguro);
            return View(tbReclamo.ToList());
        }

        // GET: Reclamo/Details/5
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

        // GET: Reclamo/Create
        public ActionResult Create()
        {
            ViewBag.codSeguro = new SelectList(db.tbSeguro, "codSeguro", "codSeguro");
            return View();
        }

        // POST: Reclamo/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "codReclamo,codSeguro,codEstado,descripción")] tbReclamo tbReclamo)
        {
            if (ModelState.IsValid)
            {
                db.tbReclamo.Add(tbReclamo);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.codSeguro = new SelectList(db.tbSeguro, "codSeguro", "codSeguro", tbReclamo.codSeguro);
            return View(tbReclamo);
        }

        // GET: Reclamo/Edit/5
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
            ViewBag.codSeguro = new SelectList(db.tbSeguro, "codSeguro", "codSeguro", tbReclamo.codSeguro);
            return View(tbReclamo);
        }

        // POST: Reclamo/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "codReclamo,codSeguro,codEstado,descripción")] tbReclamo tbReclamo)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tbReclamo).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.codSeguro = new SelectList(db.tbSeguro, "codSeguro", "codSeguro", tbReclamo.codSeguro);
            return View(tbReclamo);
        }

        // GET: Reclamo/Delete/5
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

        // POST: Reclamo/Delete/5
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
