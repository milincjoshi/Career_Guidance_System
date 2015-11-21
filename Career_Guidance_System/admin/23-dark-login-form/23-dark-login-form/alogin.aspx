<%@ Page Language="C#" AutoEventWireup="true" CodeFile="alogin.aspx.cs" Inherits="institute_23_dark_login_form_23_dark_login_form_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Dark Login Form</title>
  <link rel="stylesheet" href="css/style.css">
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>
<body>


 		
  <form runat="server" class="login">
  <p>
 <h1>Admin Login</h1>
      <label for="login">Username:</label>
      <asp:TextBox ID="Textbox1" runat="server" 
      ></asp:TextBox>
      <asp:RequiredFieldValidator ID="rf1" runat="server" ControlToValidate="Textbox1" ErrorMessage="Username compulsory" Visible ="true"></asp:RequiredFieldValidator>
    </p>

    <p>
      <label for="password">Password:</label>
      <asp:TextBox ID="Textbox2" TextMode="Password"  runat="server"></asp:TextBox>
    </p>
    
        
    <asp:Button ID="b2" text="login" runat="server" click="b2_Click" 
      BackColor="BlueViolet" cssclass="login-submit" ForeColor="WhiteSmoke" 
      onclick="b2_Click1"  />
    <p class="forgot-password">Forgot Password ??</p>
  
  </form>

 
</body>
</html>
