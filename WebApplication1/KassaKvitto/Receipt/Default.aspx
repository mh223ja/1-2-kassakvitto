<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>The Receipt</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <h1> Receipt </h1>
        <p> Total purchase amount</p>
        <asp:TextBox ID="Amount" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="You MUST enter a number" Text="*"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="You must enter a whole number" Display="Dynamic" Text="*" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
        <asp:Button ID="Rebate" runat="server" Text="Calculate Rebate" OnClick="Rebate_Click" />
        <asp:Label ID="Kroner" runat="server" Text="Kr"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </div>
    </form>
</body>
</html>
