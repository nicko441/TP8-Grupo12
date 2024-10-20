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
            Sucursal DatosSucursal = new Sucursal();
            int ddlSeleccion = Convert.ToInt32(ddlProvincias.SelectedValue);
            DatosSucursal.setNombreSucursal(txtNombreSucu.Text);
            DatosSucursal.setDescripcionSucursal(txtDescripcionSucu.Text); 
            DatosSucursal.setDireccionSucursal(txtDireccion.Text);
            DatosSucursal.setId_ProvinciaSucursal(ddlSeleccion);

            ///Aca se debe crear la funcion en sucursal.cs que pertenece a entidad y que es donde se conecta con la parte 
            ///de  daosucursal.cs
            ///tambien falta el label de "exito se guardo "

        }
    }
}