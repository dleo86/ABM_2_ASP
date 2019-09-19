<%@ Page Language="C#" AutoEventWireup="true" CodeFile="modificacionservicio.aspx.cs" Inherits="modificacionusuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        Codigo del servicio a buscar:
        <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" />
            <asp:Label ID="Label1" runat="server" Text="Label1"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSourceServicios" runat="server" SelectCommand="SELECT * FROM servicios WHERE Cod_servicio = @Cod_servicio" UpdateCommand="update servicios set Desc_servicio = @Desc_servicio, Tipo_servicio = @Tipo_servicio, Rubro = @Rubro WHERE Cod_servicio = @Cod_servicio" ConnectionString="<%$ ConnectionStrings:tp2ConnectionString %>" ProviderName="<%$ ConnectionStrings:tp2ConnectionString.ProviderName %>">
                <SelectParameters>
                    <asp:Parameter Name="Cod_servicio" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Desc_servicio" />
                    <asp:Parameter Name="Tipo_servicio" />
                    <asp:Parameter Name="Rubro" />
                    <asp:Parameter Name="Cod_servicio" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        Descripcion:<asp:TextBox ID="TextBox2" runat="server" Width="189px"></asp:TextBox>
        <br />
        Tipo de servicio:&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataTipo" DataTextField="Desc_serv" DataValueField="Cod_serv">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataTipo" runat="server" ConnectionString="<%$ ConnectionStrings:tp2ConnectionString %>" ProviderName="<%$ ConnectionStrings:tp2ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM tipo_servicio"></asp:SqlDataSource>
        <br />
        <p>
            Rubro:
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceRubros" DataTextField="Desc_rubro" DataValueField="Cod_rubro">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceRubros" runat="server" ConnectionString="<%$ ConnectionStrings:tp2ConnectionString %>" ProviderName="<%$ ConnectionStrings:tp2ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM rubros">
            </asp:SqlDataSource>
        </p>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Modificar" />
        <asp:Label ID="Label2" runat="server" Text="Label2"></asp:Label>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Retornar</asp:HyperLink>
        </p>
    </form>
</body>
</html>
