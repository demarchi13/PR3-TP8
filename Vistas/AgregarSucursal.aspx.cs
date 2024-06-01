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
    public partial class AgregarSucursal : System.Web.UI.Page
    {
        NegocioSucursal objNegocio = new NegocioSucursal();
        protected void Page_Load(object sender, EventArgs e)
        {         
            if (!IsPostBack)
            {
                ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
                objNegocio.CargarDdlProvincia(ddlProvincia);
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            Sucursal objSucursal = new Sucursal();  
            objSucursal.NombreSucursal1 = txtNombreSucursal.Text;
            objSucursal.Descripcion1 = txtDescripcion.Text;
            objSucursal.NombreProvincia1 = ddlProvincia.SelectedItem.Text;
            objSucursal.IdProvinciaSurcursal = Convert.ToInt32(ddlProvincia.SelectedValue);
            objSucursal.DireccionSucursal1 = txtDireccion.Text;

            if(objNegocio.AgregarSucursal(objSucursal)) lblMensaje.Text = "La sucursal se ha agregado con exito";
            else lblMensaje.Text = "La sucursal no se pudo cargar";

            LimpiarCampos();
        }

        public void LimpiarCampos()
        {
            txtNombreSucursal.Text = "";
            txtDescripcion.Text = "";
            ddlProvincia.ClearSelection();
            txtDireccion.Text = "";
        }
    }
}