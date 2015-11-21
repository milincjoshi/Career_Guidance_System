using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class institute_Default2 : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Id_institute"] == null)
        {
            Response.Redirect("../login/institute_login.html");
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 x = new Class1();

        x.connect();
        string varinstitut = Session["Id_institute"].ToString(); ;
        int varphotoid = x.autoincrement("select max(id_photos) from institutephotogal");
        string varphoto = "photos/" + FileUpload1.FileName;

        FileUpload1.SaveAs(MapPath(varphoto));

        Image1.ImageUrl = varphoto;

        string q = "insert into institutephotogal values(" + varinstitut + "," + varphotoid + ",'" + varphoto + "')";

        x.allquery(q);
        ltr.Text = "Photo Uploaded";


    }
}