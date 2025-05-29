<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursales.aspx.cs" Inherits="Vistas.AgregarSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" type="text/css" href="styles.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 29px;
            margin-left: 256px;
        }
        .auto-style3 {
            height: 46px;
        }
        .auto-style4 {
            height: 37px;
        }
        .auto-style5 {
            height: 17px;
        }
        .auto-style6 {
            height: 23px;
            width: 178px;
        }
        .auto-style8 {
            width: 10px;
        }
        .auto-style9 {
            height: 37px;
            width: 10px;
        }
        .auto-style10 {
            height: 46px;
            width: 10px;
        }
        .auto-style11 {
            height: 17px;
            width: 239px;
        }
        .auto-style12 {
            height: 20px;
            width: 239px;
        }
        .auto-style13 {
            width: 239px;
        }
        .auto-style14 {
            height: 37px;
            width: 239px;
        }
        .auto-style15 {
            height: 46px;
            width: 239px;
        }
        .auto-style17 {
            height: 39px;
        }
        .auto-style18 {
        }
        .auto-style21 {
            height: 20px;
            width: 169px;
        }
        .auto-style22 {
            width: 169px;
        }
        .auto-style23 {
            height: 37px;
        }
        .auto-style24 {
            height: 46px;
        }
        .auto-style25 {
            height: 17px;
        }
        .auto-style26 {
            height: 30px;
            width: 178px;
        }
        .auto-style27 {
            height: 37px;
            width: 178px;
        }
        .auto-style28 {
            height: 46px;
            width: 178px;
        }
        .auto-style29 {
            height: 17px;
            width: 178px;
        }
        .auto-style32 {
            width: 208px;
        }
        .auto-style33 {
            height: 39px;
            width: 208px;
        }
        .auto-style34 {
            height: 20px;
            width: 208px;
        }
        .auto-style36 {
            height: 20px;
        }
        .auto-style37 {
            height: 20px;
            width: 178px;
        }
        .auto-style38 {
            height: 17px;
            width: 10px;
        }
        .auto-style39 {
            height: 20px;
            width: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p style="margin-left: 157px">
                <asp:HyperLink ID="hypAgregarSucursales" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" Font-Underline="True" ForeColor="#3366FF" NavigateUrl="~/AgregarSucursales.aspx">Agregar sucursales</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="hypListarSucursal" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" Font-Underline="True" ForeColor="#3366FF" NavigateUrl="~/ListarSucursales.aspx">Listado de sucursales</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="hypEliminarSucursales" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" Font-Underline="True" ForeColor="#3366FF" NavigateUrl="~/EliminarSucursales.aspx">Eliminar sucursales</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
        <div style="margin-left: 372px">
            <asp:Label ID="lblAgregarSucursales" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="#00CC00" Text="¡AGREGAR SUCURSALES!"></asp:Label>
        </div>
            <br />
        <div style="margin-left: 463px">
            <asp:Label ID="lblGrupo9" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="#0033CC" Text="GRUPO N°9"></asp:Label>
        </div>
            <br />
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">
                    <br />
                </td>
                <td class="auto-style27">
                    <asp:Label ID="lblNombreSucursal" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" Text="Nombre de sucursal: "></asp:Label>
                    <br />
                </td>
                <td class="auto-style23" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtSucursal" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium"></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style14"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <br />
                </td>
                <td class="auto-style28">
                    <asp:Label ID="lblDescripcion" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" Text="Descripcion: "></asp:Label>
                    <br />
                </td>
                <td class="auto-style24" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtDescripcion" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium"></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style15"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style38">
                    <br />
                </td>
                <td class="auto-style29">
                    <asp:Label ID="lblProvincia" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" Text="Provincia: "></asp:Label>
                    <br />
                </td>
                <td class="auto-style25" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlProvincias" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" Height="38px" Width="191px">
                    </asp:DropDownList>
                    <br />
                    <br />
                </td>
                <td class="auto-style11"></td>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <br />
                </td>
                <td class="auto-style26">
                    <asp:Label ID="lblDireccion" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" Text="Direccion: "></asp:Label>
                    <br />
                </td>
                <td class="auto-style17" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtDireccion" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" OnTextChanged="Page_Load"></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style39"></td>
                <td class="auto-style37"></td>
                <td class="auto-style34"></td>
                <td class="auto-style21"></td>
                <td class="auto-style12"></td>
                <td class="auto-style36"></td>
                <td class="auto-style36"></td>
                <td class="auto-style36"></td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style6"><asp:Button ID="btnAceptar" runat="server" BorderStyle="Solid" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" ForeColor="#33CC33" Text="Aceptar" OnClick="btnAceptar_Click" />
                </td>
                <td class="auto-style18" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblMensaje" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style13"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style6"></td>
                <td class="auto-style32"></td>
                <td class="auto-style22"></td>
                <td class="auto-style13"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style6"></td>
                <td class="auto-style32"></td>
                <td class="auto-style22"></td>
                <td class="auto-style13"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style6"></td>
                <td class="auto-style32"></td>
                <td class="auto-style22"></td>
                <td class="auto-style13"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
