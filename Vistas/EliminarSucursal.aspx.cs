using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;

namespace Vistas
{
    public partial class EliminarSucursal : System.Web.UI.Page
    {
        NegocioSucursal objNegocio = new NegocioSucursal();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            Sucursal objSucursal = new Sucursal();
            objSucursal.IdSucursal1 = Convert.ToInt32(txtID.Text);

            if (objNegocio.EliminarSucursal(objSucursal))   lblMensaje.Text = "La sucursal se ha eliminado con exito";
            else lblMensaje.Text = "La sucursal no existe o ya se elimino";

            txtID.Text = "";
        }
    }
}