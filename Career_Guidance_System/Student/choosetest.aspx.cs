using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Student_choosetest : System.Web.UI.Page
{
    Class1 x = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            x.connect();
            if (Session["name"] == null)
            {
                Response.Redirect("student_login.aspx");
            }


            string q = "select * from testmaster";
            DataTable dt = new DataTable();

            dt = x.display(q);

            list1.DataSource = dt;
            list1.DataBind();
        }
    }
}