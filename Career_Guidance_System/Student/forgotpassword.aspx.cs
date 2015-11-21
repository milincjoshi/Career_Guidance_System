using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Mail;
using System.Xml;

public partial class Student_forgotpassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void b1_Click(object sender, EventArgs e)
    {
        Class1 X = new Class1();
        X.connect();
        string  vartxt= Textbox1.Text ;
        string Password;
      string q="select * from Studentmaster where Email='"+vartxt+"'";
        DataTable dt = X.display(q);
        if (dt.Rows.Count > 0)
        {
            Password = dt.Rows[0]["Password"].ToString();

            if (Send(SQLFix(vartxt), SQLFix("forget password "), SQLFix(Password)))
            {
                
                msg.Visible = true;

            }
            else
            {
                msg.Text= "Problem with Sending Email , Try after some time";
                msg.Visible = true;
            }



            
        }
        else
        {
            msg.Visible = true;
            msg.Text = "invalid email id";
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