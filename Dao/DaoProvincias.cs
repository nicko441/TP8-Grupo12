using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using Dao;

public class DaoProvincia
{
    AccesoDatos ds = new AccesoDatos();
    public DaoProvincia()
    {

    }
    public DataTable ObtenerProvincias()
    {
        string consulta = "SELECT * FROM Provincia";
        DataTable tabla = ds.ObtenerTabla("Provincia", consulta);
        return tabla;
    }
}