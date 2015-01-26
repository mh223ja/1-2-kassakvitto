<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Versaler.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calcultate Capitals</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1> Calculate the number of capital letters</h1>
        <asp:TextBox ID="TextArea" runat="server" TextMode="MultiLine" style="margin-bottom: 0px"></asp:TextBox>
        <asp:Button ID="Calculate" runat="server" Text="Button" OnClick="Calculate_Click" />
        <asp:Button ID="Reset" runat="server" Text="Reset" OnClick="Calculate_Reset" visible ="false"/>
        <asp:Label ID="CapitalNumber" runat="server"  Text =""></asp:Label>
          </div>
    </form>
</body>
</html>
