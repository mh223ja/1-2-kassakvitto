using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TryCalculatorAgain
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Compute_Click(object sender, EventArgs e)
        {
            var op1 = int.Parse(Op1.Text);
            var op2 = int.Parse(Op2.Text);

            var sum = op1 + op2;

            Result.Text = sum.ToString();
        }
    }
}