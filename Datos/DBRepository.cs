using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace Datos
{
    public class DBRepository
    {
        private string DbConnection = @"Data Source=DESKTOP-GUU4RQA\SQLEXPRESS;Initial Catalog=BDSucursales;Integrated Security=True;TrustServerCertificate=True";
        //Remplazar por "Data Source=localhost\\sqlexpress; Initial Catalog=BDSucursales;Integrated Security = True"; 
        //Antes de entregar


        public DataTable ListarSucursal(string query)
        {
            using (SqlConnection conn = new SqlConnection(DbConnection))
            {
                conn.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(query, conn);
                DataTable table = new DataTable();
                adapter.Fill(table);
                return table;
            }
        }

        public void InsertarSucursal(string nombreSucursal, string descripcionSucursal, string direccionSucursal, string idProvincia)
        {
            using (SqlConnection conn = new SqlConnection(DbConnection))
            {
                string sql = "INSERT INTO Sucursal (NombreSucursal, DescripcionSucursal, DireccionSucursal, Id_ProvinciaSucursal) " +
                    "VALUES (@nombre, @descripcion, @direccion, @idProvincia)";

                SqlCommand comando = new SqlCommand(sql, conn);
                comando.Parameters.AddWithValue("@nombre", nombreSucursal);
                comando.Parameters.AddWithValue("@descripcion", descripcionSucursal);
                comando.Parameters.AddWithValue("@direccion", direccionSucursal);
                comando.Parameters.AddWithValue("@idProvincia", idProvincia);

                conn.Open();
                comando.ExecuteNonQuery();
            }
        }

        public void CargarProvincias(DropDownList ddlProvincias)
        {
            using (SqlConnection conn = new SqlConnection(DbConnection))
            {
                string query = "SELECT Id_Provincia, DescripcionProvincia FROM Provincia";

                SqlCommand cmd = new SqlCommand(query, conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                conn.Open();
                da.Fill(dt);

                ddlProvincias.DataSource = dt;
                ddlProvincias.DataTextField = "DescripcionProvincia";  
                ddlProvincias.DataValueField = "Id_Provincia";     
                ddlProvincias.DataBind();

                ddlProvincias.Items.Insert(0, new ListItem("<Seleccionar provincia>", ""));
            }
        }
        
        public Boolean EliminarSucursal(String idSucursal)
        {

            SqlConnection conn = new SqlConnection(DbConnection);

            conn.Open();
            String query = "Delete From Sucursal WHERE Id_Sucursal = " + idSucursal; ;
            SqlCommand cmd = new SqlCommand(query, conn);
            int columnasAfectadas = cmd.ExecuteNonQuery();
            conn.Close();



            if (columnasAfectadas.Equals(0))
            {
                return false;
            }
            return true;
        }

        public DataTable FiltrarSucursal(int idSucursal)
        {

            DataTable dt = new DataTable();

            
            
                string query = @"SELECT s.Id_Sucursal AS [Id Sucursal],
                            s.NombreSucursal AS [Nombre],
                            s.DescripcionSucursal AS [Descripcion],
                            p.DescripcionProvincia AS [Provincia],
                            s.DireccionSucursal AS [Direccion]
                     FROM Sucursal s
                     INNER JOIN Provincia p ON p.Id_Provincia = s.Id_ProvinciaSucursal
                     WHERE s.Id_Sucursal = @idSucursal";

                using (SqlConnection conn = new SqlConnection(DbConnection))
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@idSucursal", idSucursal);
                    using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        adapter.Fill(dt);
                    }
                }

                return dt;
            

        }
    }

}