﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="choosetest.aspx.cs" Inherits="Student_choosetest" %>


<!DOCTYPE html>
<html lang="en">
<head>
  	<title>Choose Test</title>
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
<div class="bg2">
    <div class="bg">
        <div class="bg3">
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
                        </nav>   </div>
                    </div>
                </div><div class="clear"></div>
            </header>
            <!-- Content -->
            <section id="content">
                <div class="content-bottom1">
                    <div class="container_12">
                    	<div class="wrapper">
                        	<div  class="grid_12">
                            	<div class="box1"> 
                                  <ul>
                               <h6 class="car-wrapper ">   
                               
                                <asp:DataList  runat="server" ID="list1">
                                        <ItemTemplate>        
                                                                         <li>
                                         
                                         <a href='<%# "check.aspx?id_testno=" + Eval("Id_testno") %>'> <%# Eval("name") + " - "  + Eval("Type") %> </a>
                                         
                                         </li>
                                       </ItemTemplate>

                                  </asp:DataList>
                                   </h6>
                                    </ul>
                                  
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 
            </section>
        </div>
    </div>
</div>
</body>
</html>
