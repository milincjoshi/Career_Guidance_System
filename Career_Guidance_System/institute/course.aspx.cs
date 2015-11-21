using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class institute_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Id_institute"] == null)
        {
            Response.Redirect("../login/institute_login.html");
        }

    }
    protected void button1_Click(object sender, EventArgs e)
    {
        Class1 x = new Class1();
        x.connect();
        string at = "select max(Id_course) from Course_master ";
        int ff = x.autoincrement(at);
        string varidpol = ff.ToString();
         string q = "insert into Course_master values(" + varidpol + ",'" + TextBox1.Text + "','" + textbox2.Text + "','" + textbox3.Text + "')";
        x.allquery(q);
        TextBox1.Text = "";
        textbox2.Text = "";
        textbox3.Text = "";

        Label1.Visible = true;
    }
    
}