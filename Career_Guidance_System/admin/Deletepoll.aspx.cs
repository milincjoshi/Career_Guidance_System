using System;
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


public partial class admin_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    
    
    {
        Class1 x = new Class1();
        x.connect();

        
      if(!IsPostBack)

      {
          string q = "select * from Polls";

          DataTable dt = x.display(q);


          gv1.DataSource = dt;
          gv1.DataBind();

            if (Request.QueryString["iid"] != null)
            {
                string id= Request.QueryString["iid"].ToString();

                string s = "delete from polls where id_poll=" + id;

                x.allquery(s);

                Response.Redirect("deletepoll.aspx");
            }

           
            
        }

    

    }

    protected void gv1_SelectedIndexChanged(object sender, System.EventArgs e)
    {

    }
}
