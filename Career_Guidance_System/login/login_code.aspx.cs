using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class login_login_code : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        string username = Request.Form["login"].ToString();
        string password = Request.Form["password"].ToString();


        Class1 x = new Class1();
        x.connect();
        string q = "select * from institutemaster where email='" + username+ "' and password='" + password+ "'";

        DataTable dt = x.find(q);

        if (dt.Rows.Count == 0)
        {

            Response.Redirect("institute_login.html");
        }
        else
        {
            Session["Id_institute"] = dt.Rows[0][0].ToString();
            Session["Name"] = dt.Rows[0][1].ToString();
            Response.Redirect("../institute/institutehome.aspx");
        }


    }
}