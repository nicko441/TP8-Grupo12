using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas
{
    public partial class EliminarSucursal : System.Web.UI.Page
    {
        NegocioSucursal negSuc = new NegocioSucursal();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_eliminarsuc_Click(object sender, EventArgs e)
        {
            int id;
            bool correct = int.TryParse(txt_idsucursalaeliminar.Text, out id);

            if (!correct || id <= 0)
            {
                lbl_mensaje.Text = "Por favor, ingrese un ID de sucursal valido";
                return;
            }

            try
            {
                negSuc.eliminarSucursal(id);
                lbl_mensaje.Text = "Sucursal eliminada correctamente";
            }
            catch (Exception var1)
            {
                lbl_mensaje.Text = "Error eliminando la sucrusal";
                Console.WriteLine(var1.Message);
            }
        }
    }
}