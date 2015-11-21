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

        string q = "select * from Course_master where id_institute=" + Session["Id_institute"].ToString();
        DataTable dt = x.display(q);

        g2.DataSource = dt;
        g2.DataBind();

        

    }
    protected void g1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}