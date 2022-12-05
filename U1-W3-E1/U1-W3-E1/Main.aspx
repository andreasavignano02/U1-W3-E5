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
            <div class="Prenota">
            <h1>Inserisci il tuo Nome e Cognome:</h1>
            <p>Nome:</p><asp:TextBox ID="Nome" runat="server" value=""></asp:TextBox>
            <p>Cognome:</p><asp:TextBox ID="Cognome" runat="server" value=""></asp:TextBox>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="1" Text="SALA NORD"/>
                <asp:ListItem Value="2" Text="SALA EST"/>
                <asp:ListItem Value="3" Text="SALA SUD"/>
            </asp:DropDownList>
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Biglietto Ridotto" />    
               <br />
                <asp:Button ID="Button1" runat="server" Text="Button" onClick="Button1_Click"/>
            </div>
            <div class="Visione">
                <p>Informazioni</p>
                <div class="SalaA">
                    <p>Biglietti venduti Sala Nord:<asp:Label ID="LabelBighettiVendutiA" runat="server" Text=""></asp:Label>
                        Ridotti:<asp:Label ID="LabelBighettiRidottiVendutiA" runat="server" Text=""></asp:Label>
                    </p>
                </div>
                <div class="SalaB">
                    <p>Biglietti venduti Sala Nord:<asp:Label ID="LabelBighettiVendutiB" runat="server" Text=""></asp:Label>
                        Ridotti:<asp:Label ID="LabelBighettiRidottiVendutiB" runat="server" Text=""></asp:Label>
                    </p>
                </div>
                <div class="SalaC">
                    <p>Biglietti venduti Sala Nord:<asp:Label ID="LabelBighettiVendutiC" runat="server" Text=""></asp:Label>
                        Ridotti:<asp:Label ID="LabelBighettiRidottiVendutiC" runat="server" Text=""></asp:Label>
                    </p>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
