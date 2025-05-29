using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Datos;
using Negocio;

namespace Vistas
{
    public partial class ListarSucursales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                NegocioSucursal negocio = new NegocioSucursal();
                GridViewListar.DataSource = negocio.ListarSucursal();
                GridViewListar.DataBind();
            }
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            lblMensaje.Text = "";
            NegocioSucursal negocio = new NegocioSucursal();

            if (!int.TryParse(txtFiltrar.Text, out int idSucursal))
            {
                lblMensaje.Text = "Error: Ingrese un valor numérico válido";
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                return;
            }

            DataTable resultado = negocio.FiltrarSucursalPorId(idSucursal);

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
            NegocioSucursal negocio = new NegocioSucursal();
            GridViewListar.DataSource = negocio.ListarSucursal();
            GridViewListar.DataBind();
            txtFiltrar.Text = "";
        }
    }
}