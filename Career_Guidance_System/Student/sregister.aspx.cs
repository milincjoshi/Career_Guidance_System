using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Student_sregister : System.Web.UI.Page
{

    SqlConnection cn;
    SqlCommand cmd;

    DataTable dt;
    SqlDataAdapter ad;

    protected void Page_Load(object sender, EventArgs e)
    {
       

    }
   
    protected void signup_Click(object sender, EventArgs e)
    {

    
        Class1 x = new Class1();
        x.connect();

        string at = "select max(Id_Student) from studentmaster";

        int studentid = x.autoincrement(at);

        string m = "insert into Studentmaster values ('" + studentid + "','" + name.Text + "','" + dob.Text + "','" + address.Text + "','" + recentqualification.Text + "','" + email.Text + "','" + city.Text + "','" + state.Text + "','" + country.Text + "','" + username.Text + "','" + password.Text + "','" + newsletter.SelectedItem + "','" + phone.Text + "')";
        x.allquery(m);
        
       

    }
}