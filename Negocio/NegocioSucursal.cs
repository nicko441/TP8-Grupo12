using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dao;
using Entidades;

namespace Negocio
{
    public class NegocioSucursal
    {
        DaoSucursal dao = new DaoSucursal();


        public DataTable getSucursales()
        {
            return dao.ObtenerSucursales();
        }

        public DataTable getSucursalPorId(string IdSucursal)
        {
            return dao.ObtenerSucursalPorId(IdSucursal);
        }

        public void guardarSucursal(Sucursal s)
        {
            if(s == null) throw new ArgumentNullException(nameof(s), "La sucursal no puede ser nula");
            if (!this.dao.AgregarSucursal(s)) throw new Exception("No se pudo guardar la sucursal en la base de datos");
        }

        public void eliminarSucursal(int id)
        {
            if (id <= 0) throw new ArgumentOutOfRangeException(nameof(id), "El id de la sucursal no es valido");
            if (!this.dao.EliminarSucursal(id)) throw new Exception("No se pudo eliminar la sucursal de la base de datos");
        }


    }
}
