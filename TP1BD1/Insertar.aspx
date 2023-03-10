<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Insertar.aspx.cs" Inherits="TP1BD1.Insertar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 512px; margin: 0px">
    <form id="form1" runat="server">
        <div style="height: 493px; margin-left: 0px">
            <asp:Panel ID="Panel1" runat="server" BackColor="#005279" Height="73px">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text=" Tarea Programada #1" Font-Names="Segoe UI Light" ForeColor="White"></asp:Label>
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server" BackColor="#DFDFDF" Height="662px">
                &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Font-Names="Segoe UI Light" Text="Insertar Artículo" Font-Bold="True" ForeColor="Black" Font-Size="X-Large"></asp:Label>
                &nbsp;
                 
                <div id="gridV" align="center" Width="50%">
                    
                    
                    <asp:TextBox ID="txt_Nombre" runat="server" placeholder="Nombre de Artículo" Font-Names="Segoe UI Light" Font-Size="X-Large"></asp:TextBox>
                    
                    <br />
                    <br />
                    
                    <asp:TextBox ID="txt_Precio" runat="server" placeholder="Precio" type="Number" Font-Names="Segoe UI Light" Font-Size="X-Large"></asp:TextBox>
                    
                    <br />
                    <br />
                    <asp:Label ID="lbl_Errors" runat="server" Font-Names="Segoe UI Light" Font-Size="Small"></asp:Label>
                    
                    <br />
                    <br />
                    
                    <asp:Button ID="btn_Insertar" runat="server" BackColor="#005279" BorderStyle="None" Font-Names="Segoe UI Light" ForeColor="White" Height="46px" Text="Insertar" Width="96px" Font-Bold="True" Font-Size="Large" OnClick="btn_Insertar_Click" />
                    &nbsp;<asp:Button ID="btn_Cerrar" runat="server" BackColor="#005279" BorderStyle="None" Font-Names="Segoe UI Light" ForeColor="White" Height="46px" Text="Cancelar" Width="96px" Font-Bold="True" Font-Size="Large" OnClick="btn_Cerrar_Click" />
                    </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TP1BD1ConnectionString %>" SelectCommand="SELECT [Nombre], [Precio] FROM [Articulo] ORDER BY [Nombre]"></asp:SqlDataSource>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
