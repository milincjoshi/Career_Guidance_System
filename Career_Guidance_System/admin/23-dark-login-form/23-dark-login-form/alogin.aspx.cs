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
    protected void b2_Click1(object sender, EventArgs e)
    {
        Class1 x = new Class1();

        x.connect();
        string q = "select * from AdminMaster where username='" + Textbox1.Text + "' and password='" + Textbox2.Text + "'";
        DataTable dt = x.find(q);

        if (dt.Rows.Count == 0)
        {
            
        }
        else
        {
            Response.Redirect("../../adminhome.aspx");
        }

    }
}