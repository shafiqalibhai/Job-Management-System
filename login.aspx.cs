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
public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
         // connect to db
        SqlConnection con = new SqlConnection("integrated security=sspi;Server=.;Database=Jobs");
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select  utype from users where uname = @uname and pwd = @pwd", con);
            cmd.Parameters.Add("@uname", SqlDbType.VarChar, 10).Value = txtUname.Text;
            cmd.Parameters.Add("@pwd", SqlDbType.VarChar, 10).Value = txtPwd.Text; 
              
            Object obj = cmd.ExecuteScalar();
            if (obj == null)
                lblmsg.Text = "Sorry! Invalid Login!";
            else
            {
                Session.Add("uname", txtUname.Text); 
                String utype = obj.ToString();
                Response.Redirect("jshome.aspx");
                FormsAuthentication.RedirectFromLoginPage(txtUname.Text, false);
            }  
        }
        catch (Exception ex)
        {
            lblmsg.Text = "Error :" + ex.Message;
        }
        finally
        {
            con.Close();
        }
                

    }
    }

