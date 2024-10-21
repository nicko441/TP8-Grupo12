using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;

namespace Dao
{
    public class DaoSucursal
    {
        AccesoDatos ds = new AccesoDatos();

        private void ArmarParametrosSucursalAgregar(ref SqlCommand Comando, Sucursal suc)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@NOMBRESUCURSAL", SqlDbType.VarChar);
            SqlParametros.Value = suc.getNombreSucursal();
            SqlParametros = Comando.Parameters.Add("@DESCRIPCIONSUCURSAL", SqlDbType.VarChar);
            SqlParametros.Value = suc.getDescriptionSucursal();
            SqlParametros = Comando.Parameters.Add("@ID_PROVINCIASUCURSAL", SqlDbType.Int);
            SqlParametros.Value = suc.getId_ProvinciaSucursal();
            SqlParametros = Comando.Parameters.Add("@DIRECCIONSUCURSAL", SqlDbType.VarChar);
            SqlParametros.Value = suc.getDireccionSucursal();

        }

        public DataTable ObtenerSucursales()
        {
            string consulta = "SELECT Id_Sucursal,NombreSucursal as Nombre,DescripcionSucursal as Descripcion,Id_ProvinciaSucursal as Provincia,DireccionSucursal as Direccion FROM Sucursal";
            DataTable tabla = ds.ObtenerTabla("Sucursal", consulta);
            return tabla;
        }

        public DataTable ObtenerSucursalPorId(string IdSucursal)
        {
            string consulta = $"select Id_Sucursal,NombreSucursal as Nombre,DescripcionSucursal as Descripcion,Id_ProvinciaSucursal as Provincia,DireccionSucursal as Direccion from Sucursal where Id_Sucursal = '{IdSucursal}'";
            DataTable tabla = ds.ObtenerTabla("Sucursal", consulta);
            return tabla;
        }
        private void ArmarParametrosSucursalEliminar (ref SqlCommand comando, Sucursal suc)
        {
            SqlParameter Parametros = new SqlParameter();
            Parametros = comando.Parameters.Add("IDSUCURSAL", SqlDbType.Int);
            Parametros.Value = suc.getId_Sucursal();
        }

      
    }
}
