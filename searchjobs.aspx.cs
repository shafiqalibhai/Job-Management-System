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
public partial class searchjobs : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("integrated security=sspi;Server=.;Database=Jobs");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (txtExpFrom.Text == "" || txtExpTo.Text == "" || txtJobtitle.Text == "" || txtLocation.Text == "" || txtMinFrom.Text == "" || txtMinTo.Text == "" || txtPostedAfter.Text == "" || txtPostedBefore.Text == "" || txtTechskills.Text == "")
        {
            Page.RegisterStartupScript("Save", "<script>(alert('Please Enter any Field to search'))</script>");
            return;
        }
        String cond = " 1 = 1 ";
        if (txtPostedAfter.Text.Length > 0)
            cond += " and dpost >= '" + txtPostedAfter.Text + "'";

        if (txtPostedBefore.Text.Length > 0)
            cond += " and dpost <= '" + txtPostedBefore.Text + "'";

        if (txtTechskills.Text.Length > 0)
            cond += " and skillsreq  like '%" + txtTechskills.Text + "%'";

        if (txtLocation.Text.Length > 0)
            cond += " and j.location  like '%" + txtLocation.Text + "%'";


        if (txtExpFrom.Text.Length > 0)
            cond += " and expreq >= " + txtExpFrom.Text;

        if (txtExpTo.Text.Length > 0)
            cond += " and expreq <= " + txtExpTo.Text;

        if (txtMinFrom.Text.Length > 0)
            cond += " and minsal >= " + txtMinFrom.Text;

        if (txtMinTo.Text.Length > 0)
            cond += " and minsal <= " + txtMinTo.Text;

        if (txtJobtitle.Text.Length > 0)
            cond += " and jobtitle  like '%" + txtJobtitle.Text + "%'";

    try
        {
            SqlDataAdapter da = new SqlDataAdapter("select j.*, compname from jobs j, employers e where e.uname = j.uname and " + cond, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "jobs");
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind(); 
        }
        catch (Exception ex)
        {
            Response.Write("Error :" + ex.Message);
        }
        
    }
protected void  LinkButton1_Click(object sender, EventArgs e)
{
     foreach ( Control c in this.Form.FindControl("contentplaceholder1").Controls ) 
        {
     
          if ( c  is TextBox)
          {
              ((TextBox)c).Text = "";
          }  
        }
}
}
