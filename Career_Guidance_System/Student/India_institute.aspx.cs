using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Student_India_institute : System.Web.UI.Page
{
    Class1 x = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        x.connect();
        if (Session["name"] == null)
        {
            Response.Redirect("student_login.aspx");
        }


        if (!IsPostBack)
        {
            string q = "select * from Institutemaster where Country='India'";
            DataTable dt = new DataTable();
            dt = x.display(q);

            lst1.DataSource = dt;
            lst1.DataBind();
        }

    }
}