using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_result : System.Web.UI.Page
{
    Class1 x = new Class1();
    
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["name"] == null)
        {
            Response.Redirect("student_login.aspx");
        }


        if (!IsPostBack)
        {
            // student name is display from session
            student_name.Text = "-";
            score.Text = Session["score"].ToString();

            int i = 5;
            string j = i.ToString();
            int a = 4;
            string b = a.ToString();
            int c = 3;
            string d = c.ToString();
            int m = 2;
            string f = m.ToString();
            int g = 1;
            string h = g.ToString();
            int k = 0;
            string l = k.ToString();

            // if
            if (score.Text == j)
            {
                description.Text = "Awesome Result. you are good to go. looks like you are milin sir's student";
            }
            else if (score.Text == b)
            {
                description.Text = "Very Good. the last bit still remaining";
            }
            else if (score.Text == d)
            {
                description.Text = "Good.Keep it up";
            }
            else if (score.Text == f)
            {
                description.Text = "Its ok. try harder";
            }
            else if (score.Text == h)
            {
                description.Text = "Sigh.improve yourself";
            }
            else if (score.Text == l)
            {
                description.Text = "very poor. take milin sir's tution classes";
            }
        }

    }
}