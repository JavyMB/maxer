<%@ Page Language="C#" AutoEventWireup="true" CodeFile="acceso.aspx.cs" Inherits="acceso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>SOLUCIONES MAXER - PLATAFORMA</title>
    <link href="css/estilo.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSourceAcceso" runat="server" ConnectionString="<%$ ConnectionStrings:MaxerConnectionString %>" SelectCommand="sp_ValidaUsuario" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBoxUsuario" Name="Usuario" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBoxContraseña" Name="Pass" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    <div id="divAcceso">
        <div class="etiqueta">Usuario</div>
        <div class="campo"><asp:TextBox ID="TextBoxUsuario" runat="server" Height="40px" Width="300px"></asp:TextBox></div>
        <div class="etiqueta">Contraseña:</div>
        <div class="campo"><asp:TextBox ID="TextBoxContraseña" runat="server" Height="40px" Width="300px"></asp:TextBox></div>
        <div class="campo"><asp:Button ID="ButtonAcceso" runat="server" Text="Button" Height="45px" OnClick="ButtonAcceso_Click" Width="300px" /></div>
    </div>
    </form>
</body>
</html>
