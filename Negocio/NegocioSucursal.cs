using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dao;

namespace Negocio
{
    public class NegocioSucursal
    {
        public DataTable getSucursales()
        {
            DaoSucursal dao = new DaoSucursal();
            return dao.ObtenerSucursales();
        }
    }
}
