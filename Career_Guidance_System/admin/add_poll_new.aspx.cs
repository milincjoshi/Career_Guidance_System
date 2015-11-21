using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class admin_add_poll_new : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  
    protected void add_Click(object sender, EventArgs e)
    {
        Class1 x = new Class1();

        x.connect();

        string at = "select max(id_poll) from Polls ";
        int ff = x.autoincrement(at);




        string varidpol = ff.ToString();
        string varque = txtques1.Text;
        string varop1 = txtop1.Text;
        string varop2 = txtop2.Text;
        string varop3 = txtop3.Text;
        string varop4 = txtop4.Text;

        string q = "insert into polls values(" + varidpol + ",'" + varque + "','" + varop1 + "','" + varop2 + "','" + varop3 + "','" + varop4 + "')";

        int n = x.allquery(q);
    
        
    }
   
  
    protected void cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminworkpanel.aspx");
        
    }
}
