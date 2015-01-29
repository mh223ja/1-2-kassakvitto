using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Myreceipt
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calculate_Click(object sender, EventArgs e)
        {
            if (IsValid) { 
        
            
                   var yourReceipt = new receipt(Double.Parse(Input.Text));
       
                   ReceiptPanel.Visible = true;
                   
                   Subtotal.Text = string.Format("{0:c}", receipt.Subtotal);
                   DiscountRate.Text = string.Format("{0:p0}", receipt.DiscountRate);
                   MoneyOff.Text = string.Format("{0:c}", receipt.MoneyOff);
                   Total.Text = string.Format("{0:c}", receipt.Total);
            
        }
        }
    }
}