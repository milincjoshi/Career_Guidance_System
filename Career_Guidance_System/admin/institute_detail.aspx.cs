using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_institute_detail : System.Web.UI.Page
{
    Class1 x = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        x.connect();
        if (!IsPostBack)
        {
            string iid = Request.QueryString["iid"].ToString();
            string q = "select * from institutemaster where Id_institute=" + iid;
            DataTable dt = new DataTable();
             dt = x.display(q);

            t1.Text = dt.Rows[0][1].ToString();
            TextBox1.Text=dt.Rows[0][2].ToString();
             TextBox2.Text=dt.Rows[0][6].ToString();
             TextBox3.Text=dt.Rows[0][7].ToString();
             TextBox4.Text=dt.Rows[0][9].ToString();
             TextBox5.Text=dt.Rows[0][10].ToString();
             TextBox6.Text=dt.Rows[0][11].ToString();
             TextBox7.Text=dt.Rows[0][12].ToString();
             TextBox9.Text=dt.Rows[0][3].ToString();
           

        }
    }
    protected void bt1_Click(object sender, EventArgs e)
    {

    }
}