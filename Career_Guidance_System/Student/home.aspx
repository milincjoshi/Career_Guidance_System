<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="Student_home" %>
<!DOCTYPE html><html lang="en">
<head>
  	<title>Student home page</title>
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
<body><script type='text/javascript' language='javascript' src='/B1D671CF-E532-4481-99AA-19F420D90332/netdefender/hui/ndhui.js?0=0&amp;0=0&amp;0=0'></script>
<!-- PRO Framework Panel Begin -->
<!-- PRO Framework Panel End -->
<!-- Header -->
<form id="Form1" runat="server">
<div class="bg2">
    <div class="bg">
        <div class="bg3">
            <header>
                <div class="main">
                	<div class="row">
                    	<div class="wrapper">
                        	<p class="text">Welcome to our site!</p> 
                            <ul class="list-link">
                              <%
                                  if (Session["Name"] != null)
                                      Response.Write(Session["Name"].ToString() + " |  <a href=student_login.aspx>Logout</a>");
                                  else
                                  {
                                %>
                              
                            	<li><a href="sregister.aspx">Register</a></li>
                                <li><a href="student_login.aspx">Login</a></li>
                            
                            <%
                                  }
                                 %>
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
                    <div class="bg4">
                    	 <nav>
                            <ul class="sf-menu">
                                <li class="m3"><a href="home.aspx" class="current">Home</a></li>
                                <li class="m3"><a href="career.aspx">Career</a>
                                
                                            </li>

                                <li class="m1"><a href="#">Explore Institutes</a>
                                     <ul class="hidden">
                                        
                                        <li><a href="india_institute.aspx">Indian Institutes</a>
                                            
                                        </li>
                                       <li><a href="abroad.aspx">Abroad Institutes</a></li>
                                  </ul>
                                </li>
                                <li class="m3"><a href="choosetest.aspx">Check yourself</a></li>
                                 <li class="m3"><a href="faq.aspx" >FAQ</a></li>
                                <li class="m3"><a href="contactus.aspx" >Contact Us</a></li>
                               
                            </ul>
                            
                            <div class="clear"></div>
                        </nav>
                        </div>
                    </div>
                </div><div class="clear"></div>
            </header>
            <!-- Content -->
            <section id="content">
            <div class="content-bottom">
            	<div class="container_12">
                <div class="wrapper">
                	<div class="grid_6">
                    	<img src="images/main.jpg" alt="" class="big-top">
                    </div>
                    <div class="grid_6">
                    	<div class="title-1">Good Solutions </div>
                        <div class="text1">for your Career selection!</div>
                        <div class="wrapper dropcap-top">
                        	<div class="dropcap">1</div>
                            <div class="extra-wrap">
                            	<a href="more.html" class="link1">Appropriate Guidance </a><br>
                                The system guides the student based on their aptitude, interests and general knowledge<br>
                                <div class="line"></div>
                            </div>
                        </div>
                        <div class="wrapper dropcap-top1">
                        	<div class="dropcap">2</div>
                            <div class="extra-wrap">
                            	<a href="more.html" class="link1 link1-top">Career related Test</a><br>
                                <span class="text-pad">The system provides different tests specific to the career</span><br>
                                <div class="line"></div>
                            </div>
                        </div>
                        <div class="wrapper dropcap-top1">
                        	<div class="dropcap">3</div>
                            <div class="extra-wrap">
                            	<a href="more.html" class="link1 link1-top">24/7 support</a><br>
                                <span class="text-pad">The system is available round the clock</span><br>
                                <div class="line"></div>
                            </div>
                        </div>
                        
                    </div>
                    </div>
                    <div class="wrapper box1-top">
                    	<div class="grid_4">
                        	<div class="box1">
                            <div class="box1-img1"></div>
                            	<div class="padding">
                                	<div class="title-2">Current Poll</div>
                                    <asp:Literal id="ltrquestion" runat="server">
                                    </asp:Literal>
                                    <asp:Literal id="ltridpoll" Visible="false" runat="server">
                                    </asp:Literal>

                                    <br />
                                    <asp:RadioButton ID="rbnOption1" runat="server" Text="Yes" GroupName="op" />

                                    <br>
                                    <asp:RadioButton ID="rbnOption2" runat="server" Text="No" GroupName="op" />
                                    <br>
                                    <asp:RadioButton ID="rbnOption3" runat="server" Text="Can't say" GroupName="op" />

                                    <br>
                                    <asp:Button ID="Submit" runat="server" Text="Done" OnClick="Submit_click" />

                                </div>
                            </div>
                        </div>
                        <div class="grid_4">
                        	<div class="box1">
                             <div class="box1-img2"></div>
                            	<div class="padding">
                                	<div class="title-2">Video</div>
                                    <video width="300" height="200" controls="controls">
                                    <source src="../video/code.mp4" type="video/mp4" />
                                   
                                    Your browser does not support the video tag.
                                    </video>
                                </div>
                            </div>
                        </div>
                        <div class="grid_4">
                        	<div class="box1">
                             <div class="box1-img3"></div>
                            	<div class="padding">
                                	<div class="title-2">Institute</div>
                                     Institutes can register to our<br>
                                    system,and provide its details,<br>
                                    while will be displayed to the<br>
                                    students that inquiries.<br>
                                    et dolore magn.<br>
                                    <a href="../institute/iregister.aspx" class="button-2 button-2-top">Register Institute</a>

                                    <br>
                                    <a href="../login/institute_login.html" class="button-2 button-2-top">Login Institute</a>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="wrapper pad-top">
                    	<div class="grid_8">
                            <div class="pad-left">
                                <h1>Give us a chance to help you<br><span>guide your future..</span></h1>
                                <div class="text2">Career guidance system is a system designed for the better guidance of the users for selecting the appropriate option. This system solves the dilemmas faced by the user for the selection of the career option. There is a test module which is interacted by the user and based on the results of that test, the user is suggested to select the right option for their further studies. The system also provides various other additional facilities like providing updates through newsletter, answering FAQs and inquiries. This system is also helpful to various institutes for advertising themselves. They can offer details about various courses they offer. Admin , after logging approves institute and creates polls. Students can fill polls on various topics , give test, ask FAQs and inquiries and at the end provide feedback.<br>
                                
                            </div>    
                        </div>
                     
                    </div>
                </div>
               </div> 
            </section>
        </div>
    </div>
</div>
<script type="text/javascript">

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-7078796-5']);
    _gaq.push(['_trackPageview']);

    (function () {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();

</script>
</form>

</body>
</html>