<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Myreceipt.Default" viewStateMode ="disabled"%>

<!DOCTYPE html>0

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
         <asp:Label ID="Label3" runat="server" Text="Kr"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="You must enter a number!" ControlToValidate="Input" Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="You need to enter a whole number" ControlToValidate="Input" Display="Dynamic" ForeColor="Red" Operator="DataTypeCheck" Type="Double"></asp:CompareValidator>
      
        <asp:Button ID="Calculate" runat="server" Text="Rebate" OnClick="Calculate_Click" />
     
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

            </div>

            <p> Thank you for shopping!</p>
            <p> Please come again </p>
           
        </asp:Panel>
    </form>
</body>
</html>
