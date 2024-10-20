<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoSucursales.aspx.cs" Inherits="Vistas.ListadoSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
    width: 100%;
}
        .auto-style5 {
    height: 190px;
    position: relative;
    left: -3px;
    top: -3px;
}
         .nuevoEstilo40 {
     padding-top: 25px;
 }
 .nuevoEstilo41 {
     padding-top: 25px;
 }
 .nuevoEstilo42 {
     padding-top: 25px;
 }
        </style>
</head>
<body>
     <form id="form1" runat="server">
     <div class="auto-style5" style="text-align: center">
         <table class="auto-style1">
             <tr>
                 <td class="nuevoEstilo40">
                     <asp:HyperLink ID="linkAgregar" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
                 </td>
                 <td class="nuevoEstilo41">
                     <asp:HyperLink ID="linkListar" runat="server"  NavigateUrl="~/ListadoSucursales.aspx">Listado de Sucursales</asp:HyperLink>
                 </td>
                 <td class="nuevoEstilo43">
                     <asp:HyperLink ID="linkEliminar" runat="server" NavigateUrl="~/EliminarSucursal.aspx">Eliminar Sucursal</asp:HyperLink>
                 </td>
             </tr>
         </table>
         &nbsp;<br />
         </div>
         <p>
             <asp:Label ID="LbTitulo" runat="server" Text="Listado Sucursales"></asp:Label>
         </p>
         <p>
             <asp:Label ID="LbIDBusqueda" runat="server" Text="Busqueda ingrese ID Sucursal"></asp:Label>
&nbsp;
             <asp:TextBox ID="TxtIDSuc" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="BtnFiltrar" runat="server" Text="Filtrar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="BtnMostrarTodos" runat="server" Text="MostrarTodos" />
         </p>
         <p>
             &nbsp;</p>
         <p>
             <asp:GridView ID="GrwSucursales" runat="server">
             </asp:GridView>
         </p>
         <p>
             &nbsp;</p>
         </form>
</body>
</html>
