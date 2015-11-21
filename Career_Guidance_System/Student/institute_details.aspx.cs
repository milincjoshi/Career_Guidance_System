using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Student_institute_details : System.Web.UI.Page
{

    Class1 x = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        x.connect();
        if (Session["name"] == null)
        {
            Response.Redirect("student_login.aspx");
        }


        string id = Request.QueryString["Id_institute"].ToString();

        if (!IsPostBack)
        {
            string q = "select * from Institutemaster where Id_institute=" + id;

            DataTable dt = x.display(q);

            t1.Text = dt.Rows[0][1].ToString();
            label1.Text = dt.Rows[0][2].ToString();
            label2.Text = dt.Rows[0][6].ToString();
            label3.Text = dt.Rows[0][7].ToString();
            label4.Text = dt.Rows[0][9].ToString();
            label5.Text = dt.Rows[0][10].ToString();
            label9.Text = dt.Rows[0][4].ToString();
            label10.Text = dt.Rows[0][8].ToString();
            label6.Text = dt.Rows[0][11].ToString();
            label7.Text = dt.Rows[0][12].ToString();
            label8.Text = dt.Rows[0][3].ToString();
            // img1.ImageUrl=dt.Rows[0]["logo"].ToString();

        }


    }
    protected void b1_Click(object sender, EventArgs e)
    {
        string insid = Request.QueryString["Id_institute"].ToString();
        string stid = Session["Id_student"].ToString();
        int id_inq = x.autoincrement("select max(id_inquiry) from inquiry");
        string datetime1 = DateTime.Now.ToShortDateString();


        string about = t2.Text;

        string q = "insert into Inquiry values ('"+ id_inq+"','"+stid +"','"+insid  +"','"+ about + "','" + datetime1 +"')";
        x.allquery(q);
        ltr1.Text = "inquiry send";
    }
}