using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Sucursal
    {
        private string nombreSucursal;
        private string descripcionSucursal;
        private string direccionSucursal;
        private string idProvinciaSucursal;

        public string NombreSucursal
        {
            get { return nombreSucursal; }
            set { nombreSucursal = value; }
        }

        public string DescripcionSucursal
        {
            get { return descripcionSucursal; }
            set { descripcionSucursal = value; }
        }

        public string DireccionSucursal
        {
            get { return direccionSucursal; }
            set { direccionSucursal = value; }
        }

        public string IdProvinciaSucursal
        {
            get { return idProvinciaSucursal; }
            set { idProvinciaSucursal = value; }
        }
    }
}

