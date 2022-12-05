<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="U1_W3_E1.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Style.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Inserisci il tuo Nome e Cognome:</h1>
            <p>Nome:</p><asp:TextBox ID="Nome" runat="server" value=""></asp:TextBox>
            <p>Cognome:</p><asp:TextBox ID="Cognome" runat="server" value=""></asp:TextBox>
            <asp:DropDownList ID="DropDownList1" runat="server">

            </asp:DropDownList>
        </div>
    </form>
</body>
</html>
