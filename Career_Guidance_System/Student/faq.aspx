<%@ Page Language="C#" AutoEventWireup="true" CodeFile="faq.aspx.cs" Inherits="Student_faq" %>


<%@ Register
    Assembly="AjaxControlToolkit"
    Namespace="AjaxControlToolkit"
    TagPrefix="ajaxToolkit" %>

<!DOCTYPE html><html lang="en">
<head>
  	<title>FAQ</title>
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
<body id="page_4"><script type='text/javascript' language='javascript' src='/B1D671CF-E532-4481-99AA-19F420D90332/netdefender/hui/ndhui.js?0=0&amp;0=0&amp;0=0'></script>
<!-- PRO Framework Panel Begin -->
<!-- PRO Framework Panel End -->
<!-- Header -->
<div class="bg2">
    <div class="bg">
            <header>
                <div class="main">
                	<div class="row">
                    	<div class="wrapper">
                        	<p class="text">Welcome to our site!</p> 
                            <ul class="list-link">
                            	<li>
                                <%
                                    if (Session["Name"] != null)
                                        Response.Write(Session["Name"].ToString() +  " |  <a href=student_login.aspx>Logout</a>");
                                       
                                
                                %>
                                
                                </li>
                             
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

                                <li class="m3"><a href="">Explore Institutes</a>
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
                        </nav></div>
                    </div>
                </div><div class="clear"></div>
            </header>
            <!-- Content -->
            <section id="content">
                <div class="content-bottom">
                 	<div class="container_12">
                    	<div class="wrapper pad-top2">
                        	<form id="form1" runat="server">
                             <fieldset>

		      
                   
                <ajaxToolkit:ToolkitScriptManager id="m1" runat="server">

                </ajaxToolkit:ToolkitScriptManager>

                    <ajaxToolkit:Accordion ID="MyAccordion" runat="server" SelectedIndex="0"
                              HeaderCssClass="accordionHeader" HeaderSelectedCssClass="accordionHeaderSelected"
                              ContentCssClass="accordionContent" FadeTransitions="false" FramesPerSecond="40" 
                              TransitionDuration="250" AutoSize="None" RequireOpenedPane="false" SuppressHeaderPostbacks="true">
       
                        <Panes>

                            <ajaxToolkit:AccordionPane ID="AccordionPane1" runat="server">

                                <Header>

                                    <a href="" class="accordionLink">

                                         <dl>

				                            <dt>What is career guidance system?</dt>

                                         </dl>
                                
                                </a></Header>

                                <Content>

                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp    Career guidance system is a system designed 
       for the better guidance of the users for 
       selecting the appropriate option. This system solves the dilemmas faced by the user for the selection of the career option. There is a test module which is interacted by the user and based on the results of that test, the user is suggested to select the right option for their further studies. The system also provides various other additional facilities like providing updates through newsletter, answering FAQs and inquiries. This system is also helpful to various institutes for advertisingthemselves. They can offer details about various courses they offer. Admin, after logging approves institute and creates polls. Students can fill polls on various topics , give test, ask FAQs and inquiries and at the end provide feedback.   
 
                                </Content>

                            </ajaxToolkit:AccordionPane>

                            <ajaxToolkit:AccordionPane ID="AccordionPane2" runat="server">

                                 <Header>

                                    <a href="" class="accordionLink">

                                         <dl>

				                            <dt>Who can register into this system?</dt>

                                         </dl>
                                
                                </a></Header>

                                    <Content>

                                        anyone who is currently a student and needs a guidance for appropriate career option 
                                        can register themselves on this website.
 
                                   </Content>

                            </ajaxToolkit:AccordionPane>
           
                        </Panes>

            </ajaxToolkit:Accordion>

		</fieldset>

                            </form>
                        </div>
                    </div>   
                 </div> 
            </section>
        </div>
</div>
</body>
</html>
