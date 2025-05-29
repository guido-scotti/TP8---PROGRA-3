using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Datos;
using Negocio;
using Entidades;

namespace Vistas 
{

    public partial class AgregarSucursales : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarDdlProvincias();
            }
        }

        // CargarDdlProvincias se encarga de llenar el DropDownList ddlProvincias con las provincias disponibles
        private void CargarDdlProvincias()
        {
            NegocioSucursal negocio = new NegocioSucursal();
            DataTable dt = negocio.CargarProvincias();

            ddlProvincias.DataSource = dt;
            ddlProvincias.DataTextField = "DescripcionProvincia";
            ddlProvincias.DataValueField = "Id_Provincia";
            ddlProvincias.DataBind();

            ddlProvincias.Items.Insert(0, new ListItem("<Seleccionar provincia>", ""));
        }


        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtSucursal.Text) || string.IsNullOrEmpty(txtDireccion.Text) || string.IsNullOrEmpty(txtDescripcion.Text))
            {
                lblMensaje.Text = "Por favor, completá todos los campos.";
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                return;
            }

            if (ddlProvincias.SelectedValue == "0" || string.IsNullOrEmpty(ddlProvincias.SelectedValue))
            {
                lblMensaje.Text = "Por favor, seleccioná una provincia.";
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                return;

            }

            NegocioSucursal negocio = new NegocioSucursal();
            Sucursal sucursal = new Sucursal
            {
                NombreSucursal = txtSucursal.Text,
                DescripcionSucursal = txtDescripcion.Text,
                DireccionSucursal = txtDireccion.Text,
                IdProvinciaSucursal = ddlProvincias.SelectedValue
            };

            negocio.AgregarSucursal(sucursal);

            lblMensaje.Text = "¡La sucursal se ha agregado con éxito!";
            lblMensaje.ForeColor = System.Drawing.Color.Green;

            txtSucursal.Text = "";
            txtDireccion.Text = "";
            txtDescripcion.Text = "";
            ddlProvincias.SelectedIndex = 0;
        }

    }
}