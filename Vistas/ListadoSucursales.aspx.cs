









using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;
using System.Data;

namespace Vistas
{
    public partial class ListadoSucursales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            NegocioSucursal negocioSucursal = new NegocioSucursal();

            DataTable Sucursales = negocioSucursal.getSucursales();
            GrwSucursales.DataSource = Sucursales;
            GrwSucursales.DataBind();
        }
    }
}