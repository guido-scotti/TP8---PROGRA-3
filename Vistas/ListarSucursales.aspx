<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarSucursales.aspx.cs" Inherits="Vistas.ListarSucursales" %>

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
        <div style="margin-left: 378px">
            <asp:Label ID="lblListaTitulo" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="#0066FF" Text="¡LISTA DE SUCURSALES!"></asp:Label>
        </div>
        &nbsp;&nbsp;
        <br />
        <div style="margin-left: 165px">
        <asp:Label ID="lblFiltrar" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" ForeColor="Gray" Text="Ingrese ID sucursal:" ViewStateMode="Disabled"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtFiltrar" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" Width="271px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnFiltrar" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" ForeColor="Blue" Text="Filtrar" OnClick="btnFiltrar_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnMostrarTodos" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" ForeColor="Blue" Text="Mostrar todos" OnClick="btnMostrarTodos_Click" />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblMensaje" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium"></asp:Label>
         </div>
            <br />
        <div style="margin-left: 95px">
        <asp:GridView ID="GridViewListar" runat="server" CellPadding="4" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Medium" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        </div>
        <br />
        <div style="margin-left: 355px">
        </div>
    </form>
    <form id="form1">
        <div>
        </div>
    </form>
</body>
</html>
