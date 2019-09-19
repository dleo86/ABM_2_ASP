<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/altaservicio.aspx">Alta de servicios</asp:HyperLink>
    
        <br />
    
    </div>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/modificacionservicio.aspx">Modificacion de servicios</asp:HyperLink>
        <br />
    </form>
</body>
</html>
