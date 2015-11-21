using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Mail;
using System.Xml;
using System.Data;
public partial class admin_Default2 : System.Web.UI.Page
{
    Class1 x = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        x.connect();
    }
    protected void button1_Click(object sender, EventArgs e)
    {

    }

    protected void button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("editnewsletter.aspx");
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string q = "select * from studentmaster where signupfornewsletter='YES'";
        DataTable dt = new DataTable(q);
        dt = x.display(q);
        bool flag=false;

        string toemail = "";
        string message = "";

        for(int i=0;i<dt.Rows.Count;i++)
        {
            toemail = dt.Rows[i]["Email"].ToString();
            message = "date is " + TextBox2.Text + " <br> name " + TextBox3.Text + " <br> details : " + TextBox4.Text;
        if (Send(SQLFix(toemail), SQLFix(TextBox1.Text), SQLFix(message)))
        {

          flag=true;  

        }

        }

        if(flag==false)
        {
            msg.Text = "Problem with Sending Email , Try after some time";
            msg.Visible = true;
        }
        else
        {
            msg.Text = "email successfully sent";
            msg.Visible = true;
        }
    
    }

    public static bool Send(string ToAddr, string Subject, string Body)
    {
        try
        {
            MailMessage Msg = new MailMessage();
            Msg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpserver", "smtp.gmail.com");
            Msg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpserverport", "465");
            Msg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusing", "2");
            Msg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate", "1");
            Msg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusername", "kbk3149@gmail.com");
            Msg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendpassword", "dimpidisha");
            Msg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpusessl", "true");

            Msg.To = ToAddr;
            Msg.From = "kbk3149@gmail.com";
            Msg.Subject = Subject;
            Msg.BodyFormat = MailFormat.Html;
            Msg.Body = Body;
            Msg.Priority = System.Web.Mail.MailPriority.High;
            System.Web.Mail.SmtpMail.SmtpServer = "smtp.gmail.com";

            SmtpMail.Send(Msg);

            return true;
        }
        catch (Exception ex)
        {
            return false;
        }
    }

    public static string SQLFix(string textData)
    {
        return textData.Trim().Replace("'", "''");
    }


}