using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Versaler
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calculate_Click(object sender, EventArgs e)
        {

            TextArea.Enabled = false; //turns area grey and cannot input more
            Calculate.Visible = false; //reveals second button
            Reset.Visible = true;

            string textInput = TextArea.Text;

            int number = CapitalCounter.CountCapitals(textInput);

            CapitalNumber.Text = "Your text contains " + number + " capital letters";
        }

        protected void Calculate_Reset(object sender, EventArgs e)
        {
            TextArea.Enabled = true;
            Calculate.Visible = true;
            TextArea.Text = "";
            CapitalNumber.Text = "";
        }
    }
}