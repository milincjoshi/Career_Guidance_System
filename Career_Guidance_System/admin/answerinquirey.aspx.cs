using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
                Class1 x = new Class1();

        string id = Request.QueryString["iid"];

        string q = "select * from inquiry where id_inquiry=" + id;

        x.connect();

   DataTable dt =x.display(q);
        TextBox1.Text=dt.Rows[0][0].ToString();
        TextBox2.Text=dt.Rows[0][1].ToString();
        TextBox3.Text=dt.Rows[0][2].ToString();
        TextBox4.Text=dt.Rows[0][4].ToString();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {



    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
}