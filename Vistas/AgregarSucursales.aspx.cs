using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Datos;

namespace Vistas 
{

    public partial class AgregarSucursales : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DBRepository dbRepository = new DBRepository();
                dbRepository.CargarProvincias(ddlProvincias);
            }
        }

        protected void txtDireccion_TextChanged(object sender, EventArgs e)
        {


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

            DBRepository dbRepository = new DBRepository();
            dbRepository.InsertarSucursal(txtSucursal.Text, txtDescripcion.Text, txtDireccion.Text, ddlProvincias.SelectedValue);

            lblMensaje.Text = "¡La sucursal se ha agregado con éxito!";
            lblMensaje.ForeColor = System.Drawing.Color.Green;

            txtSucursal.Text = "";
            txtDireccion.Text = "";
            txtDescripcion.Text = "";
            ddlProvincias.SelectedIndex = 0;
        }

    }
}