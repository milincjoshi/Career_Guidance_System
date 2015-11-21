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

public partial class institute_temp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void t1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void bt1_Click(object sender, EventArgs e)
    {
        Class1 x = new Class1();
        x.connect();
        string at = "select max(Id_institute) from Institutemaster ";
        int ff = x.autoincrement(at);




        string varidpol = ff.ToString();
      
       
        string varname=txtname.Text;
        string varadd=txtaddress.Text;
        string varcity=txtcity.Text;
        string varstate=txtstate.Text;
        string varcountry=ddlcountry.SelectedItem.ToString();
        string varabout=txtabout.Text;
        string varaff=txtaffiliated.Text;
        string varcat=ddlcategory.SelectedItem.ToString();
        string varsub = ddlsub.SelectedItem.ToString();
        string varwebsite=txtwebsite.Text;
        string varemail=txtemail.Text;
        string varpass= txtpassword.Text;
        string varhelp=txthelp.Text;
        string varapp = txtapp.Text;


        
        string q = "insert into Institutemaster(Id_institute,Name,Address,City,State,Country,About,Affiliated,Category,Subcategory,Website,Email,Password,Helplineno,Approved) values("+ varidpol +",'"+varname +"','"+varadd +"','"+varcity +"','"+varstate +"','"+varcountry +"','"+varabout +"','"+varaff +"','"+varcat +"','"+varsub +"','"+varwebsite +"','"+varemail +"','"+varpass +"',"+varhelp+",'"+varapp +"')";
 x.allquery(q);


    }
}
