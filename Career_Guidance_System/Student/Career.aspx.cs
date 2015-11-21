using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Student_Career : System.Web.UI.Page
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
            string q = "select * from Career_master";
            DataTable dt = new DataTable();
            dt = x.display(q);

            lst1.DataSource = dt;
            lst1.DataBind();
        }

        if (Request.QueryString["Career_id"] != null)
        {
            string q = "select * from Career_master where Career_id=" + Request.QueryString["Career_id"].ToString();
            binddatalist2(q); 
        }
        else
        {
            string q = " select top(1) * from career_master";
            binddatalist2(q);
        }



    }

    public void binddatalist2(string q)
    {

        DataTable dt = new DataTable();
        dt = x.display(q);

        lst2.DataSource = dt;
        lst2.DataBind();
    
    }
}