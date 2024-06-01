using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Sucursal
    {
        private int IdSucursal;
        private string NombreSucursal;
        private string Descripcion;
        private int idProvinciaSurcursal;
        private string NombreProvincia;
        private string DireccionSucursal;
        
        public Sucursal()
        {

        }
        public int IdSucursal1 { get => IdSucursal; set => IdSucursal = value; }
        public string NombreSucursal1 { get => NombreSucursal; set => NombreSucursal = value; }
        public string Descripcion1 { get => Descripcion; set => Descripcion = value; }
        public int IdProvinciaSurcursal { get => idProvinciaSurcursal; set => idProvinciaSurcursal = value; }
        public string NombreProvincia1 { get => NombreProvincia; set => NombreProvincia = value; }
        public string DireccionSucursal1 { get => DireccionSucursal; set => DireccionSucursal = value; }
    }
}
