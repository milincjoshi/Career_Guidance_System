﻿using System;
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

        string q = "select * from Institutemaster";

       DataTable dt= x.display(q);

       gv1.DataSource = dt;
       gv1.DataBind();


    }

  
}
