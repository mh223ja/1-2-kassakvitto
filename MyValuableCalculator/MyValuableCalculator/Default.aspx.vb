Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Unnamed1_TextChanged(sender As Object, e As EventArgs)

    End Sub

    Protected Sub Compute_Click(sender As Object, e As EventArgs)
        {
            var op1 = int.Parse(Op1.Text);
            var op2 = int.Parse(Op2.Text);

            var sum = op1 + op2;

            Result.Text = sum.ToString();
            }

    End Sub
End Class