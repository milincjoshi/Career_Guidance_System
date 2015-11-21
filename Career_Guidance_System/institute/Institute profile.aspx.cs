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

public partial class institute_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        Class1 x = new Class1();
        x.connect();

      // string em= Session["email"].ToString();


        string q = "select * from Institutemaster";// where email='"+em+"'";


        DataTable dt = x.display(q);
       
        

        txt1.Text=dt.Rows[0][0].ToString();
        txt2.Text=dt.Rows[0][4].ToString();
        txt3.Text=dt.Rows[0][1].ToString();
        txt4.Text=dt.Rows[0][2].ToString();


    }
    protected void txtuser_TextChanged(object sender, EventArgs e)
    {

    }
}
