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
public partial class hideunhide : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // connect to db
        SqlConnection con = new SqlConnection("integrated security=sspi;Server=.;Database=Jobs");
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select  status from jobseekers where uname = @uname", con);
            cmd.Parameters.Add("@uname", SqlDbType.VarChar, 10).Value = Session["uname"].ToString();
            String status = (String)cmd.ExecuteScalar();
            if (status.Equals("h"))
                lblStatus.Text = "Your details are currently <b>hidden</b>. <p> To make details available, click on the button below.";
            else
                lblStatus.Text = "Your details are currently <b>available</b>. <p> To hide your details, click on the button below.";

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
    protected void btnChange_Click(object sender, EventArgs e)
    {
        // connect to db
        SqlConnection con = new SqlConnection("integrated security=sspi;Server=.;Database=Jobs");
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update jobseekers set  status = case status when 'u' then 'h' else 'u' end from jobseekers where uname = @uname", con);
            cmd.Parameters.Add("@uname", SqlDbType.VarChar, 10).Value = Session["uname"].ToString();
            cmd.ExecuteNonQuery();
            lblMsg.Text = "Status Changed Successfully!";
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
