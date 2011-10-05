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
public partial class unregister : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("integrated security=sspi;Server=.;Database=Jobs");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnUnregister_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "unregisteruser";
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@uname", SqlDbType.VarChar, 10).Value = Session["uname"].ToString();
            cmd.ExecuteNonQuery();
            Session.Abandon();
            Response.Redirect("login.aspx");
        }
        catch (Exception ex)
        {
            Response.Write("Error :" + ex.Message);
        }
        finally
        {
            con.Close();
        }
    }
}
