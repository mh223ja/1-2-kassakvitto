<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Myreceipt.Default" viewStateMode ="disabled"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"> 
    <title></title>
    <link href="Css.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1> Rebate Calculator</h1>
        <h2>Calculate your savings!</h2>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <asp:TextBox ID="Input" runat="server" TextMode="SingleLine"></asp:TextBox>
         <asp:Label ID="Label3" runat="server" Text="Dollars"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="You must enter a number!" ControlToValidate="Input" Display="Dynamic" ForeColor="Red" Text="*"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="You need to enter a whole number" ControlToValidate="Input" Display="Dynamic" ForeColor="Red" Type="Double" Operator="GreaterThan" ValueToCompare="0" Text="*"></asp:CompareValidator>
        <asp:Button ID="Calculate" runat="server" Text="Rebate" OnClick="Calculate_Click" />
        <asp:Button ID="Reset" runat="server" Text="Reset" Visible ="false" OnClick="Reset_Click" />
    </div>
        <asp:Panel ID="ReceiptPanel" runat="server" HorizontalAlign="Center" Visible ="false">
            <h1> Receipt</h1>
            <h2> Customer Copy</h2>
            <p> -----------------</p>
            <div class ="results">
                <p>
                Subtotal:<asp:Label ID="Subtotal" runat="server" Text="Label" EnableViewState="True"></asp:Label>

                Discount Rate:<asp:Label ID="DiscountRate" runat="server" Text="Label"></asp:Label>

                Money Off: <asp:Label ID="MoneyOff" runat="server" Text="Label"></asp:Label>
                
                Total:<asp:Label ID="Total" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                    </p>
                <p>-----------------</p>

            </div>

            <p> Thank you for shopping!</p>
            <p> Please come again </p>
           
        </asp:Panel>
    </form>
</body>
</html>
