<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoSucursles.aspx.cs" Inherits="Vistas.ListadoSucursles" %>

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
            font-size: x-large;
        }
        .auto-style4 {
            width: 256px;
        }
        .auto-style6 {
            width: 168px;
        }
        .auto-style7 {
            width: 62px;
        }
        .auto-style8 {
            width: 801px;
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
                    <td class="auto-style4">
                        <br />
                        <span class="auto-style3">Listado de Sucursales</span></td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Busqueda ingrese ID sucursal:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtIdSucursal" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Button ID="btnFiltrar" runat="server" OnClick="btnFiltrar_Click" style="height: 29px" Text="Filtrar" />
                    </td>
                    <td class="auto-style8">
                        <asp:Button ID="btnMostrarTodos" runat="server" Text="Mostrar Todos" OnClick="btnMostrarTodos_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
            </table>

        </div>
        <div>   

            <asp:GridView ID="gvSucursales" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>

        </div>
    </form>
</body>
</html>
