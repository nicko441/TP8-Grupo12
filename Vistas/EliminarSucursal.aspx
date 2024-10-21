<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarSucursal.aspx.cs" Inherits="Vistas.EliminarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 13px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="hl_agregarsucursal" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="hl_listadosucursal" runat="server" NavigateUrl="~/ListadoSucursales.aspx">Listado de sucursales</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="hl_eliminarsucursal" runat="server" NavigateUrl="~/EliminarSucursal.aspx">Eliminar sucursal</asp:HyperLink>
        </div>
        <br />
        <br />
        <asp:Label ID="lbl_eliminarsuc" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Eliminar Sucursal"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lbl_ingresarsucursal" runat="server" Text="Ingresar ID Sucursal:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt_idsucursalaeliminar" runat="server"></asp:TextBox>
&nbsp;
        <asp:Button ID="btn_eliminarsuc" runat="server" CssClass="auto-style1" Text="Eliminar" />
        <br />
        <br />
        <asp:Label ID="lbl_mensaje" runat="server" ForeColor="Red"></asp:Label>
    </form>
</body>
</html>
