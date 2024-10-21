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

        private void ArmarParametrosSucursalAgregar(SqlCommand Comando, Sucursal suc)
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
            string consulta = "SELECT Id_Sucursal, NombreSucursal AS Nombre, DescripcionSucursal AS Descripcion,DescripcionProvincia AS Provincia, DireccionSucursal AS Direccion FROM Sucursal INNER JOIN Provincia ON Id_ProvinciaSucursal = Id_Provincia";
            DataTable tabla = ds.ObtenerTabla("Sucursal", consulta);
            return tabla;
        }

        public DataTable ObtenerSucursalPorId(string IdSucursal)
        {
            string consulta = $"SELECT Id_Sucursal, NombreSucursal AS Nombre, DescripcionSucursal AS Descripcion,DescripcionProvincia AS Provincia, DireccionSucursal AS Direccion FROM Sucursal INNER JOIN Provincia ON Id_ProvinciaSucursal = Id_Provincia where Id_Sucursal = '{IdSucursal}'";
            DataTable tabla = ds.ObtenerTabla("Sucursal", consulta);
            return tabla;
        }
        private void ArmarParametrosSucursalEliminar (ref SqlCommand comando, int id)
        {
            SqlParameter Parametros = new SqlParameter();
            Parametros = comando.Parameters.Add("IDSUCURSAL", SqlDbType.Int);
            Parametros.Value = id;
        }
        
        public bool AgregarSucursal(Sucursal s)
        {
            SqlCommand comando = new SqlCommand();
            this.ArmarParametrosSucursalAgregar(comando, s);
            string consulta = "INSERT INTO Sucursal (NombreSucursal, DescripcionSucursal, Id_ProvinciaSucursal, DireccionSucursal) " +
                "VALUES (@NOMBRESUCURSAL, @DESCRIPCIONSUCURSAL, @ID_PROVINCIASUCURSAL, @DIRECCIONSUCURSAL)";
            return ds.EjecutarConsulta(consulta, comando);
        }

        public bool EliminarSucursal(int id)
        {
            SqlCommand comando = new SqlCommand();
            this.ArmarParametrosSucursalEliminar(ref comando, id);
            string consulta = $"DELETE FROM Sucursal WHERE Id_Sucursal = '{id}'";
            return ds.EjecutarConsulta(consulta, comando);
        }

      
    }
}
