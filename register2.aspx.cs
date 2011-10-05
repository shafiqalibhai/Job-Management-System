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

public partial class register2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         
        if (Page.PreviousPage != null)
        {
            DropDownList dl = (DropDownList) PreviousPage.Controls[0].FindControl("ddlUtype");
            if (dl != null)
                    //MultiView1.ActiveViewIndex = dl.SelectedIndex;
            //else
                  Response.Write("Error. Nothing is selected");
        }
        else
            Response.Write("Error");
        
    }
    }

