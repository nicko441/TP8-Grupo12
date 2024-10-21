using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Negocio;
using Entidades;

namespace Vistas
{
    public partial class AgregarSucursal : System.Web.UI.Page
    {
        NegocioProvincias negProv = new NegocioProvincias();
        NegocioSucursal negSuc = new NegocioSucursal();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable tablaProvincia = negProv.getProvincias();
                ddlProvincias.DataSource = tablaProvincia;
                ddlProvincias.DataTextField = "DescripcionProvincia";
                ddlProvincias.DataValueField = "Id_Provincia";
                ddlProvincias.DataBind();
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            int ddlSeleccion = Convert.ToInt32(ddlProvincias.SelectedValue);
            Sucursal s = Sucursal.crearSucursal(txtNombreSucu.Text, txtDescripcionSucu.Text,
                ddlSeleccion, txtDireccion.Text);
            this.negSuc.guardarSucursal(s);

        }
    }
}