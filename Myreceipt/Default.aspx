<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Myreceipt.Default" viewStateMode ="disabled"%>

<!DOCTYPE html>0

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="You must enter a number!" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red" >*</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="You need to enter a whole number" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red" Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
        <asp:Label ID="Label1" runat="server" Text="Kr"></asp:Label>
        <asp:Button ID="Calculate" runat="server" Text="Rebate" OnClick="Calculate_Click" />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </div>
    </form>
</body>
</html>
