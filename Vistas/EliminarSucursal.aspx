<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarSucursal.aspx.cs" Inherits="Vistas.EliminarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 168px;
        }
        .auto-style4 {
            width: 89px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:HyperLink ID="hyplAgreregarSucursal" runat="server" style="margin-right:100px" NavigateUrl="~/AgregarSucursal.aspx" CssClass="auto-style15" >Agreregar Sucursal</asp:HyperLink>
            <asp:HyperLink ID="hypListadoSucursales" runat="server" NavigateUrl="~/ListadoSucursles.aspx" CssClass="auto-style15">Listado de Sucursales</asp:HyperLink>
            <asp:HyperLink ID="hypEliminarSucursal" runat="server" style="margin-left:100px" NavigateUrl="~/EliminarSucursal.aspx" CssClass="auto-style15">Eliminar Sucursal</asp:HyperLink>
        </div>
        <div>

            <table class="auto-style2">
                <tr>
                    <td class="auto-style3"><strong>Eliminar Sucursal</strong></td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Ingresar ID Sucursal:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtID" runat="server" ValidationGroup="gEliminar"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" ValidationGroup="gEliminar" OnClick="btnEliminar_Click" />
                    </td>
                    <td><strong>
                        <asp:RegularExpressionValidator ID="revID" runat="server" ControlToValidate="txtID" CssClass="auto-style8" style="color: #FF0000" ValidationExpression="^\d+$" ValidationGroup="gEliminar">* Solamente se pueden ingresar numeros enteros</asp:RegularExpressionValidator>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td><strong>
                        <asp:RequiredFieldValidator ID="rfvID" runat="server" ControlToValidate="txtID" CssClass="auto-style8" ErrorMessage="RequiredFieldValidator" style="color: #FF0000" ValidationGroup="gEliminar">* Debe ingresar un valor</asp:RequiredFieldValidator>
                        </strong></td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
