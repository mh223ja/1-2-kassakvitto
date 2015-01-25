<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TryCalculatorAgain.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TryCalculatorAgain</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <asp:textbox ID="Op1" runat="server"></asp:textbox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Op1 kan inte vara tom." Display="Dynamic" Text="*" ControlToValidate="Op1" EnableClientScript="False">

        </asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" Display="Dynamic" ErrorMessage='Op1 måste innehålla ett heltal' Text="*" ControlToCompare="Op1" Operator="DataTypeCheck" Type="Integer" ClientIDMode="Inherit"></asp:CompareValidator>
       +
        <asp:TextBox ID="Op2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Op2 kan inte vara tom" Text="*" ControlToValidate="Op2" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator2" runat="server" Display="Dynamic" ErrorMessage="Op2 måste innehålla ett heltal." Text="*" ControlToValidate ="Op2"></asp:CompareValidator>
        <asp:Button ID="Compute" runat="server" Text="Button" OnClick="Compute_Click" />
        <asp:Label ID="Result" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
