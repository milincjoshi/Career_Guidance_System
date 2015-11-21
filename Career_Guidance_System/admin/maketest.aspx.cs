using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data;
using System.Data.SqlClient;

public partial class admin_Default3 : System.Web.UI.Page
{
    Class1 x = new Class1();

    

    protected void Page_Load(object sender, EventArgs e)
    {

        
        x.connect();

        //Session["testid"]="";

    }
    
   

    protected void Button4_Click(object sender, EventArgs e)
    {

        string at = "select max(Id_testno) from Testmaster";

   int testid = x.autoincrement(at);

   Session["testid"] = testid.ToString();
        
        string q = "insert into Testmaster values (" +testid+ ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "'," + TextBox4.Text + ")";

        int n = x.allquery(q);

        TextBox1.Enabled = false;
        TextBox2.Enabled = false;
        TextBox3.Enabled = false;
        TextBox4.Enabled = false;

        TextBox5.Focus();

        Button4.Enabled = false;


      


    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        TextBox1.Enabled = false;
        TextBox2.Enabled = false;
        TextBox3.Enabled = false;
        TextBox4.Enabled = false;
     
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
       
        Button4.Enabled = true;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string at = "select max(Qno) from Testque";

        int queid = x.autoincrement(at);


        string testid = Session["testid"].ToString();

        string q = "insert into Testque values (" + testid + ",'" + queid + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + correctans.Text + "')";



        int n = x.allquery(q);

        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
    }

  
}