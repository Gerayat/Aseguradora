using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Venta_de_articulos.Models
{
    public class clsTablaChi
    {
        public double getValorTabla(int gradosLibertad, double nivelSignificancia)
        {
            dbAseguradoraEntities db = new dbAseguradoraEntities();
            double resultado = 0;

            switch (nivelSignificancia)
            {
                case 0.995:
                    resultado = db.tbChiCuadrada.Where(t => t.DF == gradosLibertad).FirstOrDefault().a;
                    break;

                case 0.975:
                    resultado = db.tbChiCuadrada.Where(t => t.DF == gradosLibertad).FirstOrDefault().b;
                    break;

                case 0.20:
                    resultado = db.tbChiCuadrada.Where(t => t.DF == gradosLibertad).FirstOrDefault().c;
                    break;

                case 0.10:
                    resultado = db.tbChiCuadrada.Where(t => t.DF == gradosLibertad).FirstOrDefault().d;
                    break;

                case 0.05:
                    resultado = db.tbChiCuadrada.Where(t => t.DF == gradosLibertad).FirstOrDefault().e;
                    break;

                case 0.025:
                    resultado = db.tbChiCuadrada.Where(t => t.DF == gradosLibertad).FirstOrDefault().f;
                    break;

                case 0.02:
                    resultado = db.tbChiCuadrada.Where(t => t.DF == gradosLibertad).FirstOrDefault().g;
                    break;

                case 0.01:
                    resultado = db.tbChiCuadrada.Where(t => t.DF == gradosLibertad).FirstOrDefault().h;
                    break;

                case 0.005:
                    resultado = db.tbChiCuadrada.Where(t => t.DF == gradosLibertad).FirstOrDefault().i;
                    break;

                case 0.002:
                    resultado = db.tbChiCuadrada.Where(t => t.DF == gradosLibertad).FirstOrDefault().j;
                    break;

                case 0.001:
                    resultado = db.tbChiCuadrada.Where(t => t.DF == gradosLibertad).FirstOrDefault().k;
                    break;
            }

            return resultado;
        }

    }
}