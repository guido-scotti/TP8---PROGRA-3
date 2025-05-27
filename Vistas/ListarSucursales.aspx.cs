using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Datos;

namespace Vistas
{
    public partial class ListarSucursales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var db = new DBRepository();
                var query = "SELECT s.Id_Sucursal AS [Id Sucursal], s.NombreSucursal AS [Nombre], s.DescripcionSucursal AS [Descripcion], p.DescripcionProvincia AS [Provincia], s.DireccionSucursal AS [Direccion]\r\n" +
                    "FROM Sucursal s\r\n" +
                    "INNER JOIN Provincia p ON p.Id_Provincia = s.Id_ProvinciaSucursal";
                GridViewListar.DataSource = db.ListarSucursal(query);
                GridViewListar.DataBind();
            }
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            lblMensaje.Text = "";
            DBRepository dbRepository = new DBRepository();

            if (!int.TryParse(txtFiltrar.Text, out int idSucursal))
            {
                lblMensaje.Text = "Error: Ingrese un valor numérico válido";
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                return;
            }

            DataTable resultado = dbRepository.FiltrarSucursal(idSucursal);

            if (resultado.Rows.Count == 0)
            {
                lblMensaje.Text = "No se encontró una sucursal con ese ID";
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                GridViewListar.DataSource = null;
            }
            else
            {
                GridViewListar.DataSource = resultado;
            }

            GridViewListar.DataBind();
            txtFiltrar.Text = "";
        }

        protected void btnMostrarTodos_Click(object sender, EventArgs e)
        {
            var db = new DBRepository();
            var query = "SELECT s.Id_Sucursal AS [Id Sucursal], s.NombreSucursal AS [Nombre], s.DescripcionSucursal AS [Descripcion], p.DescripcionProvincia AS [Provincia], s.DireccionSucursal AS [Direccion]\r\n" +
                "FROM Sucursal s\r\n" +
                "INNER JOIN Provincia p ON p.Id_Provincia = s.Id_ProvinciaSucursal";
            GridViewListar.DataSource = db.ListarSucursal(query);
            GridViewListar.DataBind();
            txtFiltrar.Text = "";
        }
    }
}