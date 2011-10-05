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

public partial class register : System.Web.UI.Page
{
     SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }


    protected void BtnNext_Click(object sender, EventArgs e)
    {
        try
        {
            con = new SqlConnection("integrated security=sspi;Server=.;Database=Jobs");

            con.Open();
            if (txtUname.Text == "" || txtPwd.Text=="")
            {
                lblmsg.Text = "sorry pls enter the required fileds";
            }
            else
            {
                cmd = new SqlCommand("select count(*) from users where uname = @uname", con);
                cmd.Parameters.Add("@uname", SqlDbType.VarChar, 10).Value = txtUname.Text;

                int cnt = (int)cmd.ExecuteScalar();
                if (cnt == 1)
                {
                    lblmsg.Text = "Sorry! Username is already present. Try another name!";
                    return;
                }
                cmd.CommandText = "select count(*) from users where email = @email";
                cmd.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = txtEmail.Text;

                cnt = (int)cmd.ExecuteScalar();
                if (cnt == 1)
                {
                    lblmsg.Text = "Sorry! Email address is already present.";
                    return;
                }



                
                //cmd = new SqlCommand("insert into Users values(@p1,@p2,@p3,@p4,@p5,@p6,@p7)", con);
                //cmd.Parameters.Add(new SqlParameter("@p1", txtUname.Text));
                //cmd.Parameters.Add(new SqlParameter("@p2", txtPwd.Text));
                //cmd.Parameters.Add(new SqlParameter("@p4", dt));
                //cmd.Parameters.Add(new SqlParameter("@p3", txtEmail.Text));
                //cmd.Parameters.Add(new SqlParameter("@p6", txtAddress.Text));
                //cmd.Parameters.Add(new SqlParameter("@p7", txtPhone.Text));
                //cmd.Parameters.Add(new SqlParameter("@p5", ddlUtype.SelectedItem.Text));
                //cmd.ExecuteNonQuery();
                //con.Close();
                //hPwd.Text = txtPwd.Text;
                hPwd.Text = txtPwd.Text; 
                MultiView1.ActiveViewIndex = ddlUtype.SelectedIndex + 1;
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

    SqlConnection GetConnection()
    {
        SqlConnection con = new SqlConnection("integrated security=sspi;Server=.;Database=Jobs");
        con.Open();
        return con;
    }

    
    void InsertUser(SqlCommand cmd)
    {
        //string dt = DateTime.Today.ToShortDateString();
        cmd.CommandText = "insert into users values(@uname,@pwd,@email,getdate(),@utype,@address,@phone)";
        cmd.Parameters.Add("@uname", SqlDbType.VarChar, 10).Value = txtUname.Text;
        cmd.Parameters.Add("@pwd", SqlDbType.VarChar, 10).Value = hPwd.Text;
        cmd.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = txtEmail.Text;
        cmd.Parameters.Add("@address", SqlDbType.VarChar, 100).Value = txtAddress.Text;
        cmd.Parameters.Add("@phone", SqlDbType.VarChar, 50).Value = txtPhone.Text;

        cmd.Parameters.Add("@utype", SqlDbType.Char, 1).Value  = ddlUtype.SelectedItem.Text;
        cmd.ExecuteNonQuery();
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        
        
        
        try
        {
            con = GetConnection();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            InsertUser(cmd);
            // insert a row into job seekers
            
            cmd.CommandText = "insert into jobseekers values(@uname,@fullname,@qual,@dob,'',0,'','','',0,'u')";
            cmd.Parameters.Clear();
            cmd.Parameters.Add("@uname", SqlDbType.VarChar, 10).Value = txtUname.Text;
            cmd.Parameters.Add("@fullname", SqlDbType.VarChar, 10).Value = txtFullname.Text;
            cmd.Parameters.Add("@qual", SqlDbType.VarChar, 10).Value = txtQual.Text;
            cmd.Parameters.Add("@dob", SqlDbType.VarChar, 10).Value = txtDob.Text;
            cmd.ExecuteNonQuery();
            lblmsg2.Text = "Registration is Successful! Please <a href=login.aspx>login</a>";
        }
        catch (Exception ex)
        {
            lblmsg2.Text = "Error: " + ex.Message;
        }
        finally
        {
            con.Close();
        }
    }
    protected void btnEmpRegister_Click(object sender, EventArgs e)
    {

    }
}
