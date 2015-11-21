using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class institute_Maintainphotos : System.Web.UI.Page
{
    Class1 x = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string q = "select * from institutephotogal where id_institute=" + Session["Id_institute"].ToString();
           
            x.connect();

            DataTable dt = new DataTable();
            dt = x.display(q);

            dl1.DataSource = dt;
            dl1.DataBind();

        }
    }
}