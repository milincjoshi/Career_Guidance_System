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

public partial class institute_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Class1 x = new Class1();

        x.connect();
        if(Session["Id_institute"] ==null)
        {
            Response.Redirect("../login/institute_login.html");
        }


        string q = "select * from view1 where id_institute=" + Session["Id_institute"].ToString();
     DataTable dt=x.display(q);

       g1.DataSource = dt;
        g1.DataBind();

        
    }
    protected void g1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
