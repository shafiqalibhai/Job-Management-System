using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class changepassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("integrated security=sspi;Server=.;Database=Jobs");
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnChange_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update users set pwd=@newpwd where uname = @uname and pwd = @oldpwd", con);
            cmd.Parameters.Add("@newpwd", SqlDbType.VarChar, 10).Value = txtNewPwd.Text;
            cmd.Parameters.Add("@uname", SqlDbType.VarChar, 10).Value = (String)Session["uname"];
            cmd.Parameters.Add("@oldpwd", SqlDbType.VarChar, 10).Value = txtOldPwd.Text;

            if (cmd.ExecuteNonQuery() == 1)
                lblMsg.Text = "Password Changed Successfully!";
            else
                lblMsg.Text = "Sorry! Old password is not valid";

        }
        catch (Exception ex)
        {
            lblMsg.Text = "Error :" + ex.Message;
        }
        finally
        {
            con.Close();
        }
    }
}
