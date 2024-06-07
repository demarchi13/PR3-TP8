using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Data;
using System.Web.UI.WebControls;
using Entidades;
using Dao;

namespace Negocio
{
    public class NegocioSucursal
    {       
        public void CargarDdlProvincia(DropDownList ddlProvincias)
        {
            AccesoDatos objDatos = new AccesoDatos();
            
            string consulta = "SELECT Id_Provincia, DescripcionProvincia FROM Provincia";

            objDatos.setearConsulta(consulta);

            objDatos.ejecutarLectura();

            ddlProvincias.Items.Insert(0, new ListItem("--Seleccionar--", "0"));

            while (objDatos.Lector.Read())
            {
                ddlProvincias.Items.Add(new ListItem(objDatos.Lector["DescripcionProvincia"].ToString(), objDatos.Lector["Id_Provincia"].ToString()));
            }

            objDatos.cerrarConexion();
        }

        public bool AgregarSucursal(Sucursal objSucursal)
        {
            AccesoDatos objDatos = new AccesoDatos();
            
            string consulta = "INSERT INTO Sucursal (NombreSucursal, DescripcionSucursal, Id_ProvinciaSucursal, DireccionSucursal) VALUES (@NombreSucursal, @DescripcionSucursal, @IdProvinciaSucursal, @DireccionSucursal)";
            objDatos.setearConsulta(consulta);
           
            objDatos.setearParametro("@NombreSucursal", objSucursal.NombreProvincia1);
            objDatos.setearParametro("@DescripcionSucursal", objSucursal.Descripcion1);
            objDatos.setearParametro("@IdProvinciaSucursal", objSucursal.IdProvinciaSurcursal);
            objDatos.setearParametro("@DireccionSucursal", objSucursal.DireccionSucursal1);         


            if (objDatos.ejecutarAccion())
            {
                objDatos.cerrarConexion();
                return true;
            }
            else
            {
                objDatos.cerrarConexion();
                return false;
            }           
        }

        public void CargarGrillaSucursales(GridView gvSucursales)
        {
            AccesoDatos objDatos = new AccesoDatos();

            string consulta = "SELECT Sucursal.Id_Sucursal, Sucursal.NombreSucursal, Sucursal.DescripcionSucursal, Provincia.DescripcionProvincia ,Sucursal.DireccionSucursal FROM Sucursal INNER JOIN Provincia ON Sucursal.Id_ProvinciaSucursal = Provincia.Id_Provincia";

            objDatos.setearConsulta(consulta);

            objDatos.ejecutarLectura();

            gvSucursales.DataSource = objDatos.Lector;
            gvSucursales.DataBind();

            objDatos.cerrarConexion();
        }

        public void FiltrarGrilla(GridView gvSucursales, Sucursal objSucursal)
        {
            AccesoDatos objDatos = new AccesoDatos();
            
            string consulta = "SELECT Sucursal.Id_Sucursal, Sucursal.NombreSucursal, Sucursal.DescripcionSucursal, Provincia.DescripcionProvincia ,Sucursal.DireccionSucursal FROM Sucursal INNER JOIN Provincia ON Sucursal.Id_ProvinciaSucursal = Provincia.Id_Provincia WHERE Sucursal.Id_Sucursal =" + objSucursal.IdSucursal1;

            objDatos.setearConsulta(consulta);

            objDatos.ejecutarLectura();

            gvSucursales.DataSource = objDatos.Lector;
            gvSucursales.DataBind();

            objDatos.cerrarConexion();
        }

        public bool EliminarSucursal(Sucursal objSucursal)
        {
            //PARTE 1
            AccesoDatos objDatos = new AccesoDatos();

            //PARTE 2
            string consulta = "DELETE FROM Sucursal WHERE Sucursal.Id_Sucursal=" + objSucursal.IdSucursal1;

            //PARTE 3
            objDatos.setearConsulta(consulta);

            //PARTE 4
            if (objDatos.ejecutarAccion())
            {
                objDatos.cerrarConexion();
                return true;
            }
            //PARTE 5
            else
            {
                objDatos.cerrarConexion();
                return false;
            } 
        }
    }
}
