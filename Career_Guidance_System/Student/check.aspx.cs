using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Student_c : System.Web.UI.Page
{
    Class1 x = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

        x.connect();
        if (Session["name"] == null)
        {
            Response.Redirect("student_login.aspx");
        }



        if (Session["score"]==null)
            Session["score"] = 0;

        if (!IsPostBack)
        {
           
            if (Request.QueryString["Id_testno"] != null)
            {
                testname.Text = Request.QueryString["Id_testno"].ToString();
                DataTable dt = new DataTable();
           
                
                string q = "select * from testque where Id_testno=" + testname.Text + " order by qno";
                dt = x.display(q);
                qno.Text = dt.Rows[0]["Qno"].ToString();
                Quesname.Text = dt.Rows[0]["Que"].ToString();
                opt1.Text = dt.Rows[0]["Option1"].ToString();
                opt2.Text = dt.Rows[0]["Option2"].ToString();
                opt3.Text = dt.Rows[0]["Option3"].ToString();
                opt4.Text = dt.Rows[0]["Option4"].ToString();
                rightans.Text = dt.Rows[0]["Rightans"].ToString();

            }

        }

    }
    protected void next_Click(object sender, EventArgs e)
    {
        string givenans = "";
        int s;
        if (opt1.Checked)
        {
            givenans = opt1.Text;
        }
        else if (opt2.Checked)
        {
            givenans = opt2.Text;
        }
        else if (opt3.Checked)
        {
            givenans = opt3.Text;
        }
        else if (opt4.Checked)
        {
            givenans = opt4.Text;
        }

        if (givenans == rightans.Text)
        {
            s = int.Parse(score.Text) + 1;
            score.Text = s.ToString();
        }

        qno.Text = (int.Parse(qno.Text) + 1).ToString();
        string q = "select * from testque where qno=" + qno.Text + " and id_testno=" + Request.QueryString["Id_testno"].ToString();

        DataTable dt = new DataTable();
        dt = x.display(q);

        if (dt.Rows.Count == 0)
        {
            Session["score"] = score.Text;
            Response.Redirect("result.aspx");
            
        }
        else
        {
            opt1.Checked = false;
            opt2.Checked = false;
            opt3.Checked = false;
            opt4.Checked = false;

            qno.Text = dt.Rows[0]["Qno"].ToString();
            Quesname.Text = dt.Rows[0]["Que"].ToString();
            opt1.Text = dt.Rows[0]["Option1"].ToString();
            opt2.Text = dt.Rows[0]["Option2"].ToString();
            opt3.Text = dt.Rows[0]["Option3"].ToString();
            opt4.Text = dt.Rows[0]["Option4"].ToString();
            rightans.Text = dt.Rows[0]["Rightans"].ToString();

        }

    }
}