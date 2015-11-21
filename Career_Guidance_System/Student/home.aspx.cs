using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Student_home : System.Web.UI.Page
{
    Class1 x = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        x.connect();
       

        if (!IsPostBack)
        {
            string q = "select top(1) * from polls order by id_poll desc";
            DataTable dt = new DataTable();
            dt = x.display(q);

            ltrquestion.Text = dt.Rows[0]["Question"].ToString();
            ltridpoll.Text = dt.Rows[0]["Id_poll"].ToString();
        }



    }

    
    protected void Submit_click(object sender, EventArgs e)
    {

        string q="";
        if (rbnOption1.Checked)
        {

            q = "update polls set poll_option1=poll_option1+1 where id_poll=" + ltridpoll.Text;
            x.allquery(q);
        }

        if (rbnOption2.Checked)
        {
            q = "update polls set poll_option2=poll_option2+1 where id_poll=" + ltridpoll.Text;
            x.allquery(q);
        }
        if (rbnOption3.Checked)
        {
            q = "update polls set poll_option3=poll_option3+1 where id_poll=" + ltridpoll.Text;
            x.allquery(q);
        }

    }
}