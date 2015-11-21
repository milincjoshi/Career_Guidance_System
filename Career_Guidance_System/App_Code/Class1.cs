using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data;
using System.Data.SqlClient;

public class Class1
{
    SqlConnection cn;
    SqlCommand cmd;

    DataTable dt;
    SqlDataAdapter ad;

    public Class1()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public void connect()
    {
        string cs = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";

        cn = new SqlConnection(cs);
        cn.Open();


    }

    public int allquery(string q)
    {
        cmd = new SqlCommand(q, cn);
        int n = cmd.ExecuteNonQuery();
        return (n);
    }

    public DataTable display(string q)
    {
        cmd = new SqlCommand(q, cn);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();
        adp.Fill(ds);

        DataTable dt = new DataTable();
        dt = ds.Tables[0];

        return (dt);
    }


    public DataTable find(string q)
    {
        cmd = new SqlCommand(q, cn);
        ad = new SqlDataAdapter(cmd);
        dt = new DataTable();
        ad.Fill(dt);
        return (dt);
    }

    public int autoincrement(string q)
    {
        try
        {
            cmd = new SqlCommand(q, cn);
            int n = Convert.ToInt16(cmd.ExecuteScalar());
            return (n + 1);
        }
        catch
        {
            return (1);
        }

    }

}
