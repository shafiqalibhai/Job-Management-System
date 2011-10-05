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
using System .Data .SqlClient ;
using System.Net.Mail;


public partial class forgotpassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
         SqlConnection con = new SqlConnection("integrated security=sspi;Server=.;Database=Jobs");
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select uname,pwd from users where email = @email", con);
            cmd.Parameters.Add("@email", SqlDbType.VarChar, 40).Value = txtEmail.Text;
            SqlDataReader dr = cmd.ExecuteReader();
            if (! dr.Read() )
            {   
                lblMsg.Text = "Sorry! Invalid Email Address!";
            }
            else
            {
                // send mail   
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("admin@classroom.com");
                msg.To.Add(new MailAddress(txtEmail.Text));
                msg.Subject = "Password Recovery";
                msg.IsBodyHtml = true;
                msg.Body = "Dear User, <p>Your Username : " +  dr["uname"] + "<br>Your password :"  + dr["pwd"] + "<p>Use the above details to login.<p>Thank you for using this service.<br>Webmaster<br><b>www.jobs.com</b>";
                SmtpClient server = new SmtpClient("classroom");
                server.Send(msg);
                lblMsg.Text = "Account Details Are Sent To Your Email Account. Please use those details to login!";
            }
            dr.Close();

        } 
        catch (Exception ex)
        {
            lblMsg.Text = "Error : " + ex.Message;
        }
        finally
        {
            con.Close();
        }
    }
    }

