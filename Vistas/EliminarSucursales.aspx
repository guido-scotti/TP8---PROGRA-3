<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarSucursales.aspx.cs" Inherits="Vistas.EliminarSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
        <p style="margin-left: 157px">
            <asp:HyperLink ID="hypAgregarSucursales" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" Font-Underline="True" ForeColor="#3366FF" NavigateUrl="~/AgregarSucursales.aspx">Agregar sucursales</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="hypListarSucursal" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" Font-Underline="True" ForeColor="#3366FF" NavigateUrl="~/ListarSucursales.aspx">Listado de sucursales</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="hypEliminarSucursales" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" Font-Underline="True" ForeColor="#3366FF" NavigateUrl="~/EliminarSucursales.aspx">Eliminar sucursales</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <div style="margin-left: 390px">
            <asp:Label ID="lblEliminarSucursal" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Red" Text="¡ELIMINAR SUCURSAL!"></asp:Label>
        </div>
        <p style="margin-left: 291px">
            &nbsp;<asp:Label ID="label2" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" Font-Underline="True" ForeColor="Black" Text="Ingresar ID sucursal:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" Width="200px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Small" OnClick="Button1_Click" Text="Eliminar" />
        </p>
        <div style="margin-left: 383px">
            <asp:Label ID="label3" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" ForeColor="#33CC33"></asp:Label>
        </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
