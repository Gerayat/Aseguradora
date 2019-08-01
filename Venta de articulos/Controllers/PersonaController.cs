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
    public class PersonaController : Controller
    {
        private dbAseguradoraEntities db = new dbAseguradoraEntities();

        // GET: Persona
        public ActionResult Index()
        {
            return View(db.tbPersona.ToList());
        }

        // GET: Persona/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbPersona tbPersona = db.tbPersona.Find(id);
            if (tbPersona == null)
            {
                return HttpNotFound();
            }
            return View(tbPersona);
        }

        // GET: Persona/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Persona/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "codPersona,primerNombre,segundoNombre,primerApellido,segundoApellido,telefono,fechaNacimiento")] tbPersona tbPersona)
        {
            if (ModelState.IsValid)
            {
                db.tbPersona.Add(tbPersona);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tbPersona);
        }

        // GET: Persona/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbPersona tbPersona = db.tbPersona.Find(id);
            if (tbPersona == null)
            {
                return HttpNotFound();
            }
            return View(tbPersona);
        }

        // POST: Persona/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "codPersona,primerNombre,segundoNombre,primerApellido,segundoApellido,telefono,fechaNacimiento")] tbPersona tbPersona)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tbPersona).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tbPersona);
        }

        // GET: Persona/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbPersona tbPersona = db.tbPersona.Find(id);
            if (tbPersona == null)
            {
                return HttpNotFound();
            }
            return View(tbPersona);
        }

        // POST: Persona/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            tbPersona tbPersona = db.tbPersona.Find(id);
            db.tbPersona.Remove(tbPersona);
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
