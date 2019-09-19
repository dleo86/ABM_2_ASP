<%@ Page Language="C#" AutoEventWireup="true" CodeFile="altaservicio.aspx.cs" Inherits="altausuario" %>

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
        Ingrese descripcion:<asp:TextBox ID="TextBox1" runat="server" Width="166px"></asp:TextBox>
        <br />
        Ingrese tipo de servicio:
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Desc_serv" DataValueField="Cod_serv">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tp2ConnectionString %>" SelectCommand="SELECT Cod_serv, Desc_serv FROM tipo_servicio"></asp:SqlDataSource>
        <br />
        <p>
            Ingrese rubro:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Desc_rubro" DataValueField="Cod_rubro">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataServicios" runat="server" ConnectionString="<%$ ConnectionStrings:tp2ConnectionString %>" InsertCommand="insert into servicios(Desc_servicio, Tipo_servicio, Rubro) values (@Desc_servicio, @Tipo_servicio, @Rubro)" SelectCommand="SELECT [Desc_servicio], [Rubro], [Tipo_servicio] FROM [servicios]" ProviderName="<%$ ConnectionStrings:tp2ConnectionString.ProviderName %>">
                <InsertParameters>
                    <asp:Parameter Name="Desc_servicio" />
                    <asp:Parameter Name="Tipo_servicio" />
                    <asp:Parameter Name="Rubro" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:tp2ConnectionString %>" SelectCommand="SELECT * FROM [rubros]" ProviderName="<%$ ConnectionStrings:tp2ConnectionString.ProviderName %>"></asp:SqlDataSource>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Alta" Width="58px" />
&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label1"></asp:Label>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Retornar</asp:HyperLink>
        </p>
    </form>
</body>
</html>
