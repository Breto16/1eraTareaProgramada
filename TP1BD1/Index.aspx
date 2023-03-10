<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TP1BD1.windows_f" %>

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
                <asp:Label ID="Label2" runat="server" Font-Names="Segoe UI Light" Text="Lista de Artículos" Font-Bold="True" ForeColor="Black" Font-Size="X-Large"></asp:Label>
                &nbsp;
                 
                <div id="gridV" align="center" Width="50%">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Font-Bold="True" Font-Names="Segoe UI Light" PageSize="15" DataKeyNames="id">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                            <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                        </Columns>
                    </asp:GridView>
                    
                    <asp:Button ID="btn_Insertar" runat="server" BackColor="#005279" BorderStyle="None" Font-Names="Segoe UI Light" ForeColor="White" Height="46px" Text="Insertar" Width="96px" Font-Bold="True" OnClick="btn_Insertar_Click" />
                    <asp:Button ID="btn_Cerrar" runat="server" BackColor="#005279" BorderStyle="None" Font-Names="Segoe UI Light" ForeColor="White" Height="46px" Text="Cerrar" Width="96px" Font-Bold="True" OnClick="btn_Cerrar_Click" />
                    </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TP1BD1ConnectionString %>" SelectCommand="SELECT [id], [Nombre], [Precio] FROM [Articulo] ORDER BY [Nombre]"></asp:SqlDataSource>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
