using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using Entidades;

namespace Datos
{
    public class DBRepository
    {
        private string DbConnection = @"Data Source=CIRIACO\SQLEXPRESS;Initial Catalog=BDSucursales;Integrated Security=True;Encrypt=False";
        //Remplazar por "Data Source=localhost\\sqlexpress; Initial Catalog=BDSucursales;Integrated Security = True"; 
        //Antes de entregar

        public DataTable ListarSucursales(string query, SqlParameter parametro = null)
        {
            DataTable dt = new DataTable();

            using (SqlConnection conn = new SqlConnection(DbConnection))
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                if (parametro != null)
                {
                    cmd.Parameters.Add(parametro);
                }

                using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                {
                    adapter.Fill(dt);
                }
            }

            return dt;
        }


        public void InsertarSucursal(Sucursal suc, string query)
        {
            using (SqlConnection conn = new SqlConnection(DbConnection))
            {
                SqlCommand comando = new SqlCommand(query, conn);
                comando.Parameters.AddWithValue("@nombre", suc.NombreSucursal);
                comando.Parameters.AddWithValue("@descripcion", suc.DescripcionSucursal);
                comando.Parameters.AddWithValue("@direccion", suc.DireccionSucursal);
                comando.Parameters.AddWithValue("@idProvincia", suc.IdProvinciaSucursal);

                conn.Open();
                comando.ExecuteNonQuery();
            }
        }

        public DataTable ObtenerProvincias(string query)
        {
            using (SqlConnection conn = new SqlConnection(DbConnection))
            {

                SqlCommand cmd = new SqlCommand(query, conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                conn.Open();
                da.Fill(dt);

                return dt;
            }
        }


        public int EliminarSucursal(String idSucursal)
        {

            SqlConnection conn = new SqlConnection(DbConnection);

            conn.Open();
            String query = "Delete From Sucursal WHERE Id_Sucursal = " + idSucursal;
            SqlCommand cmd = new SqlCommand(query, conn);
            int columnasAfectadas = cmd.ExecuteNonQuery();
            conn.Close();

            return columnasAfectadas;
        }
    }
}