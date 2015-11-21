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


public partial class Student_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void b1_Click(object sender, EventArgs e)
    {
        Class1 x = new Class1();
        x.connect();
        string q = "select * from Studentmaster where username='" + Textbox1.Text + "' and password='" + Textbox2.Text + "'";

        DataTable dt = x.find(q);

        if (dt.Rows.Count == 0)
        {

            msg.Text = "Invalid Password";
        }
        else
        {
            Session["Id_student"] = dt.Rows[0][0].ToString();
            Session["Name"] = dt.Rows[0][1].ToString();
            Response.Redirect("home.aspx");
        }

    }

}