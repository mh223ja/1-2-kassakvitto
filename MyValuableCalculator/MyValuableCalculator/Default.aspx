<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MyValuableCalculator.Default" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Min Värdefulla Kalkylator</title>
</head>
<body>

    <form id="form1" runat="server">
    <div>
    <asp:TextBox ID="Op1" runat="server"></asp:TextBox>
        +
    <asp:textbox ID="Op2" runat="server"></asp:textbox>
   
    <asp:Button ID="Compute" runat="server" Text="=" OnClick="Compute_Click" />
     <asp:Label ID="Result" runat="server" Text="Label"></asp:Label>
    </div>
    </form>
</body>
</html>

