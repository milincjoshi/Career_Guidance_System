using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;


public partial class institute_23_dark_login_form_23_dark_login_form_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void b2_Click(object sender, EventArgs e)
    {
        Class1 x = new Class1();

        x.connect();
        string varusername = txtuser.Text;
        string varpassword = txtpwd.Text;

        string q = "select * from Institutemaster where Email='" + varusername + "' and password='" + varpassword + "'";

        DataTable dt = x.find(q);

        if (dt.Rows.Count == 0)
        {
      
        }
        else
        {
            Response.Redirect("../../institutehome.aspx");

            Session["username"] = varusername;

        }
        
    }
   
}