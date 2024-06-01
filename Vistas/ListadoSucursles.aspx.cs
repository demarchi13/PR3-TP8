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
    public partial class ListadoSucursles : System.Web.UI.Page
    {
        NegocioSucursal objNegocio = new NegocioSucursal();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                objNegocio.CargarGrillaSucursales(gvSucursales);
            }
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            if(txtIdSucursal.Text != "")
            {
                Sucursal objSucursal = new Sucursal();
                objSucursal.IdSucursal1 = Convert.ToInt32(txtIdSucursal.Text);

                objNegocio.FiltrarGrilla(gvSucursales, objSucursal);
                txtIdSucursal.Text = "";
            }
            else
            {
                objNegocio.CargarGrillaSucursales(gvSucursales);
            }
        }

        protected void btnMostrarTodos_Click(object sender, EventArgs e)
        {
            objNegocio.CargarGrillaSucursales(gvSucursales);
        }
    }
}