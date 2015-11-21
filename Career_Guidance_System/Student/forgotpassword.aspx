<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgotpassword.aspx.cs" Inherits="Student_forgotpassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE html>
<html lang="en">
<head>
  	<title>Forgot Password</title>
  	<meta charset="utf-8">
    <meta name="description" content="Your description">
    <meta name="keywords" content="Your keywords">
    <meta name="author" content="Your name">
    <link rel="stylesheet" href="css/style.css">
    <script src="js/jquery-1.7.1.min.js"></script>
    <script src="js/script.js"></script>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400' rel='stylesheet' type='text/css'>
<!--[if lt IE 8]>
   <div style=' clear: both; text-align:center; position: relative;'>
     <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
       <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
    </a>
  </div>
<![endif]-->
<!--[if lt IE 9]>
	<script src="js/html5.js"></script>
	<link rel="stylesheet" href="css/ie.css"> 
<![endif]-->
<script type="text/javascript"></script><link rel='stylesheet' type='text/css' href='/B1D671CF-E532-4481-99AA-19F420D90332/netdefender/hui/ndhui.css' /></head>
<body id="page_3"><script type='text/javascript' language='javascript' src='/B1D671CF-E532-4481-99AA-19F420D90332/netdefender/hui/ndhui.js?0=0&amp;0=0&amp;0=0'></script>
<!-- PRO Framework Panel Begin -->
<!-- PRO Framework Panel End -->
<!-- Header -->
<div class="bg2">
    <div class="bg">
        <div class="bg3">
            <header>
                <div class="main">
                	<div class="row">
                    	<div class="wrapper">
                        	<p class="text">Welcome to our site!</p> 
                            <ul class="list-link">
                            	<li><a href="sregister.aspx">Register</a></li>
                                <li><a href="student_login.aspx">Login</a></li>
                            </ul>                     	
                        </div>
                    </div>
                    <div class="row1">
                        <h1><a href="index.html">Greeno</a></h1>
                 <ul class="img-list1">                    
                            <li><a href="https://www.facebook.com/careerguidancedesk" class="icon-1" title="Facebook"><img src="images/icon-1.jpg" alt=""></a></li>
                            <li><a href="https://twitter.com/careerguidedesk" class="icon-2" title="Twitter"><img src="images/icon-2.jpg" alt=""></a></li>
                           
                        </ul>
                     </div>
                    <div class="clear"></div>
                    <div class="row2">
                     </div>
                </div><div class="clear"></div>
            </header>
            <!-- Content -->
            <section id="content">
                <div class="content-bottom">
                 	<div class="container_12">
                    	<div class="wrapper box1-top1">
                    	<div class="grid_4">
                        <div class="grid_4">
                        	<div class="box1">
                            	<div class="padding">
                                	<div class="title-2">Forgot Password?</div>
                                   
                                   <form runat="server" id="form1">
                                    <fieldset>

				
				    <table >

				    	<tr>

					    	<td>

                        <h6> Enter your Email&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</h6>

                            </td>

					    	<td>
                            
                                <asp:TextBox ID="Textbox1" runat ="server" class="input-text" Width="271px" />
                            <asp:RegularExpressionValidator ControlToValidate="Textbox1" ID="mailvalidate" runat="server" ValidationExpression="\S+@\S+\.\S+" ErrorMessage="Invalid Email" ></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="rf1" runat="server" ControlToValidate="Textbox1" ErrorMessage="please enter your email-id"></asp:RequiredFieldValidator>
                            </td> 
                                    
					    </tr>

                    	<tr>

					    	<td>

                                &nbsp;</td>

					    	<td>

                                &nbsp;</td>

				    	</tr>

                    	
				    	</tr>

                        <tr>

                             <td>

                             </br>
                                    
                                   <asp:Button ID="b1" Text="Ok" runat="server" class="button-2 button-2-top" 
                                     onclick="b1_Click" />
                                    
                                
                                
                             </td>


                             <td rowspan="2">
                             <br />
                                <br />

                             &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                              

                                <br />
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
                              <h6> <asp:Literal ID="msg" Visible="false" Text="Password has been sent to your Email" runat="server"></asp:Literal>
                              </h6>
                             </td>

                        </tr>

				</table>
				
			</fieldset>
            </form>
			
                                </div>
                            </div>
                        </div>
                    </div>
</body>
</html>
