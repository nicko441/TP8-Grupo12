using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;

namespace Vistas
{
    public partial class ListadoSucursales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Sucursal grSucursal = new Sucursal();
            GrwSucursales.DataSource = grSucursal.ObtenerSucursales();///falta crear el metodo en sucursales.cs en  dentro de la biblioteca entidades.
            GrwSucursales.DataBind();
        }
    }
}