using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Mail;
using System.Xml;


public partial class Student_Contac : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void b1_Click(object sender, EventArgs e)
    {
        Class1 X = new Class1();
        X.connect();



        string at = "select max(id_feedback) from feedback ";
        int ff = X.autoincrement(at);
        

        string msg = "name is "+ t1.Text + "E-mail is" +t2.Text + "Phone-no is"+t3.Text + "Message is"+t4.Text;
        string w = "insert into feedback values('"+ff+"','"+t1.Text+"','"+t2.Text+"','"+t3.Text+"','"+t4.Text+"')";

        int n= X.allquery(w);

        if (Send(SQLFix("kbk3149@gmail.com"), SQLFix("FORGET PASSWORD "), SQLFix(msg)))
        {
            abcxyz.Text = "Your inquiry has been succesfully sent";
            abcxyz.Visible = true;
       

        }
        else
        {
            abcxyz.Text  = "Problem with Sending Email , Try after some time";
            abcxyz.Visible   = true;
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


    protected void b1_Click1(object sender, EventArgs e)
    {

    }
}