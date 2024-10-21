<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="Vistas.AgregarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .nuevoEstilo1 {
            table-layout: auto;
        }
        .nuevoEstilo2 {
            position: relative;
            line-height: normal;
            text-align: justify;
        }
        .nuevoEstilo3 {
        }
        .nuevoEstilo4 {
            white-space: normal;
            text-align: justify;
        }
        .auto-style1 {
            width: 100%;
        }
        .nuevoEstilo5 {
            margin-left: 50px;
        }
        .nuevoEstilo6 {
            margin-left: 50px;
        }
        .auto-style2 {
            height: 28px;
        }
        .nuevoEstilo7 {
            margin-left: 50px;
        }
        .nuevoEstilo8 {
            font-size: x-large;
        }
        .nuevoEstilo9 {
            font-size: xx-large;
        }
        .nuevoEstilo10 {
            font-size: x-large;
            margin-left: 50px;
        }
        .nuevoEstilo11 {
            margin-left: 50px;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            text-align: left;
            height: 23px;
            font-weight: bold;
            font-size: xx-large;
            margin-left: 50px;
        }
        .auto-style5 {
            height: 190px;
            position: relative;
            left: -3px;
            top: -3px;
        }
        .nuevoEstilo12 {
            margin-left: 50px;
            font-size: x-large;
        }
        .nuevoEstilo13 {
            margin-left: 50px;
            font-size: large;
        }
        .nuevoEstilo14 {
            font-size: xx-large;
            margin-left: 50px;
        }
        .nuevoEstilo15 {
            font-size: xx-large;
            margin-left: 50px;
        }
        .nuevoEstilo16 {
            margin-left: 50px;
        }
        .auto-style6 {
            margin-left: 50px;
            text-align: left;
            height: 52px;
        }
        .nuevoEstilo17 {
            margin-left: 50px;
        }
        .nuevoEstilo18 {
            margin-left: 50px;
        }
        .nuevoEstilo19 {
            margin-left: 50px;
        }
        .nuevoEstilo20 {
            margin-left: 50px;
            border-spacing: inherit;
        }
        .nuevoEstilo21 {
            margin-left: 50px;
        }
        .nuevoEstilo22 {
            margin-left: 50px;
            margin-right: 50px;
        }
        .auto-style7 {
            margin-left: 50px;
            text-align: left;
            height: 48px;
        }
        .nuevoEstilo23 {
            margin-left: 50px;
        }
        .nuevoEstilo24 {
            margin-left: 50px;
        }
        .nuevoEstilo25 {
            margin-left: 50px;
        }
        .nuevoEstilo26 {
            margin-left: 50px;
        }
        .nuevoEstilo27 {
            margin-left: 50px;
        }
        .auto-style8 {
            margin-left: 50px;
            text-align: left;
            height: 30px;
        }
        .nuevoEstilo28 {
            margin-left: 50px;
        }
        .auto-style9 {
            margin-left: 50px;
            text-align: left;
            height: 23px;
        }
        .nuevoEstilo29 {
            margin-left: 50px;
        }
        .nuevoEstilo30 {
            margin-left: 50px;
        }
        .nuevoEstilo31 {
            margin-left: 50px;
        }
        .auto-style10 {
            margin-left: 50px;
            text-align: left;
        }
        .nuevoEstilo32 {
            margin-left: 50px;
        }
        .nuevoEstilo33 {
            padding-left: 50px;
        }
        .nuevoEstilo34 {
            margin-left: 50px;
        }
        .nuevoEstilo35 {
            margin-left: 50px;
        }
        .nuevoEstilo36 {
            margin-left: 50px;
        }
        .nuevoEstilo37 {
            margin-left: 50px;
        }
        .nuevoEstilo38 {
            margin-left: 100px;
        }
        .nuevoEstilo39 {
            margin-left: 200px;
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
        .nuevoEstilo43 {
            padding-top: 25px;
        }
        .nuevoEstilo44 {
            padding-left: 200px;
        }
        .nuevoEstilo45 {
            margin-left: 200px;
        }
        .nuevoEstilo46 {
            margin-left: 220px;
        }
        .nuevoEstilo47 {
            margin-left: 200px;
        }
        .nuevoEstilo48 {
            margin-left: 200px;
        }
        .auto-style11 {
            margin-left: 200px;
            text-align: left;
            height: 34px;
        }
        .nuevoEstilo49 {
            margin-left: 200px;
        }
        .nuevoEstilo50 {
            margin-left: 220px;
        }
        .nuevoEstilo51 {
            margin-left: 50px;
        }
        .auto-style12 {
            margin-left: 220px;
            margin-bottom: 0px;
        }
        .auto-style13 {
            text-align: left;
            height: 23px;
        }
        .auto-style14 {
            margin-left: 220px;
            margin-bottom: 0px;
            color: #FF0000;
        }
    </style>
</head>
<body style="height: 305px">
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
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="text-align: left"></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblTitulo" runat="server" CssClass="nuevoEstilo51" Text="GRUPO N° 12"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                </tr>
                <tr>
                    <td class="auto-style3"><span class="nuevoEstilo10"><strong>
                        <asp:Label ID="lblSubTitulo" runat="server" Text="Agregar Sucursal"></asp:Label>
                        </strong></span></td>
                </tr>
                <tr>
                    <td class="auto-style6"><span class="nuevoEstilo17">
                        <asp:Label ID="lblNombre" runat="server" Text="Nombre Sucursal:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtNombreSucu" runat="server" Width="217px" ValidationGroup="Agregar"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNombreSucursal" runat="server" ControlToValidate="txtNombreSucu" ErrorMessage="Agregar un nombre de sucursal" ForeColor="Red" ValidationGroup="Agregar">Agregar un nombre de sucursal</asp:RequiredFieldValidator>
                        </span></td>
                </tr>
                <tr>
                    <td class="auto-style7"><span class="nuevoEstilo22">
                        <asp:Label ID="lblDescripcion" runat="server" Text="Descripcion:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtDescripcionSucu" runat="server" Height="35px" Width="222px" ValidationGroup="Agregar"></asp:TextBox>
                        </span>
                        <asp:RequiredFieldValidator ID="rfvDescripcionSucursal" runat="server" ControlToValidate="txtDescripcionSucu" ErrorMessage="Agregar una descripcion" ForeColor="Red" ValidationGroup="Agregar">Agregar una descripcion</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"><span class="nuevoEstilo27">
                        <asp:Label ID="lblProvincia" runat="server" Text="Provincia:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="ddlProvincias" runat="server" Height="18px" Width="232px">
                        </asp:DropDownList>
                        <br />
                        </span></td>
                </tr>
                <tr class="nuevoEstilo35">
                    <td class="auto-style10"><span class="nuevoEstilo36">
                        <asp:Label ID="lblDireccion" runat="server" Text="Direccion:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                        <asp:TextBox ID="txtDireccion" runat="server" Width="224px" ValidationGroup="Agregar"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDescripcionSucursal0" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Agregar una direccion" ForeColor="Red" ValidationGroup="Agregar">Agregar una direccion</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="nuevoEstilo35">
                    <td class="auto-style9">&nbsp;&nbsp; </td>
                </tr>
                <tr class="nuevoEstilo35">
                    <td class="auto-style11">
                        <asp:Button ID="btnAceptar" runat="server" CssClass="auto-style12" Text="Aceptar" ValidationGroup="Agregar" OnClick="btnAceptar_Click" />
                       
                        <asp:Label ID="lblAgregadoExitoso"  CssClass="auto-style14" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
