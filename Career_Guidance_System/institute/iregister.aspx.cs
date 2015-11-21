using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class institute_ins_register : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void bt1_Click(object sender, EventArgs e)
    {




    }
    protected void isignup_Click(object sender, EventArgs e)
    {
        Class1 x = new Class1();
        x.connect();
        string ai = "select max(Id_institute) from Institutemaster";
        int instid = x.autoincrement(ai);

        string filename = "../logo/default.jpg";
        if (FileUpload1.HasFile)
        {
            filename = "../logo/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(filename));
        }
        else
        {
            filename = "../logo/untitled.png";
            //  logo.SaveAs(MapPath(filename));
        }


        string m = "insert into institutemaster values ('" + instid + "','" + name.Text + "','" + addr.Text + "','" + helpline.Text + "','" + category.Text + "','" + Subcategory.Text + "','" + City.Text + "','" + State.Text + "','" + cont.SelectedItem + "','" + about.Text + "','" + aff.Text + "','" + website.Text + "','" + Email.Text + "','" + password.Text + "','Yes','" + filename + "')";
        x.allquery(m);


    }
}