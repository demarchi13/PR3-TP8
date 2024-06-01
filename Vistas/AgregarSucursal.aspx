<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="Vistas.AgregarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
         .auto-style11 {
            text-align: center;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style9 {
            width: 247px;
            font-size: xx-large;
        }
        .auto-style11 {
            font-size: x-large;
        }
        .auto-style12 {
            width: 253px;
        }
        .auto-style14 {
            width: 168px;
        }
        .auto-style15 {
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style11">
            <asp:HyperLink ID="hyplAgreregarSucursal" runat="server" style="margin-right:100px" NavigateUrl="~/AgregarSucursal.aspx" CssClass="auto-style15" >Agreregar Sucursal</asp:HyperLink>
            <asp:HyperLink ID="hypListadoSucursales" runat="server" NavigateUrl="~/ListadoSucursles.aspx" CssClass="auto-style15">Listado de Sucursales</asp:HyperLink>
            <asp:HyperLink ID="hypEliminarSucursal" runat="server" style="margin-left:100px" NavigateUrl="~/EliminarSucursal.aspx" CssClass="auto-style15">Eliminar Sucursal</asp:HyperLink>
        </div>
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style12">
                        <table class="auto-style2">
                            <tr>
                                <td class="auto-style9"><strong>GRUPO Nº 10</strong></td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12"><span class="auto-style11"><strong>Agregar Sucursal</strong></span></td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">Nombre Sucursal:</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="txtNombreSucursal" runat="server" ValidationGroup="GrupoSucursal"></asp:TextBox>
                    </td>
                    <td><strong>
                        <asp:RequiredFieldValidator ID="rfvNombreSucursal" runat="server" ControlToValidate="txtNombreSucursal" CssClass="auto-style19" style="color: #FF0000" ValidationGroup="GrupoSucursal">* Debe ingresar un nombre</asp:RequiredFieldValidator>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style12">Descripcion:</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="txtDescripcion" runat="server" ValidationGroup="GrupoSucursal"></asp:TextBox>
                    </td>
                    <td><strong>
                        <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion" CssClass="auto-style19" style="color: #FF0000" ValidationGroup="GrupoSucursal">* Debe ingresar una descripcion</asp:RequiredFieldValidator>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style12">Provincia:</td>
                    <td class="auto-style14">
                        <asp:DropDownList ID="ddlProvincia" runat="server" ValidationGroup="GrupoSucursal">
                        </asp:DropDownList>
                    </td>
                    <td><strong>
                        <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ControlToValidate="ddlProvincia" CssClass="auto-style19" InitialValue="0" style="color: #FF0000" ValidationGroup="GrupoSucursal">* Seleccione una Provincia</asp:RequiredFieldValidator>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style12">Direccion:</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="txtDireccion" runat="server" ValidationGroup="GrupoSucursal"></asp:TextBox>
                    </td>
                    <td><strong>
                        <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" CssClass="auto-style19" style="color: #FF0000" ValidationGroup="GrupoSucursal">* Debe ingresar una direccion</asp:RequiredFieldValidator>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style14">
                        <br />
                        <asp:Button ID="btnAceptar" runat="server" OnClick="btnAceptar_Click" Text="Aceptar" ValidationGroup="GrupoSucursal" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style14">
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
