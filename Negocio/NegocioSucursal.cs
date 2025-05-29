using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using System.Data;
using Entidades;
using System.Data.Common;
using System.Data.SqlClient;


namespace Negocio
{
    public class NegocioSucursal
    {
        public DataTable CargarProvincias()
        {
            string query = "SELECT Id_Provincia, DescripcionProvincia FROM Provincia";

            DBRepository dbRepository = new DBRepository();
            return dbRepository.ObtenerProvincias(query);
        }

        public void AgregarSucursal(Sucursal sucursal)
        {
            string query = "INSERT INTO Sucursal (NombreSucursal, DescripcionSucursal, DireccionSucursal, Id_ProvinciaSucursal) " +
                         "VALUES (@nombre, @descripcion, @direccion, @idProvincia)";
            DBRepository dbRepository = new DBRepository();
            dbRepository.InsertarSucursal(sucursal, query);

        }

        public bool EliminarSucursal(string idSucursal)
        {
            DBRepository dbRepository = new DBRepository();
            int res = dbRepository.EliminarSucursal(idSucursal);

            if (res == 0)
            {
                return false;
            }
            return true;
        }

        public DataTable ListarSucursal()
        {
            DBRepository db = new DBRepository();
            string query = "SELECT s.Id_Sucursal AS [Id Sucursal], " +
                            "s.NombreSucursal AS [Nombre], s.DescripcionSucursal AS [Descripcion]," +
                            " p.DescripcionProvincia AS [Provincia], s.DireccionSucursal AS [Direccion] " +
                           "FROM Sucursal s " +
                           "INNER JOIN Provincia p ON p.Id_Provincia = s.Id_ProvinciaSucursal";
            return db.ListarSucursales(query);
        }

        public DataTable FiltrarSucursalPorId(int idSucursal)
        {
            string query = @"
            SELECT s.Id_Sucursal AS [Id Sucursal],
                   s.NombreSucursal AS [Nombre],
                   s.DescripcionSucursal AS [Descripcion],
                   p.DescripcionProvincia AS [Provincial],
                   s.DireccionSucursal AS [Direccion]
            FROM Sucursal s
            INNER JOIN Provincia p ON p.Id_Provincia = s.Id_ProvinciaSucursal
            WHERE s.Id_Sucursal = @idSucursal";

            SqlParameter param = new SqlParameter("@idSucursal", idSucursal);

            DBRepository db = new DBRepository();
            return db.ListarSucursales(query, param);
        }

    }
}
