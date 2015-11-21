<%@ Page Title="Contactus" Language="C#" MasterPageFile="~/institute/IMasterPage.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="institute_contactus" %>


<asp:Content ID="Content2" runat="server" contentplaceholderid="cpmenu1">
    <ul class="box">
        <li><a href="institutehome.aspx" ><span>Home</span></a></li> <!-- Active -->
			<li><a href="coursesview.aspx"><span>Courseview</span></a></li>
        <li><a href="course.aspx"><span>Add Courses</span></a></li>
        <li><a href="Maintainphotos.aspx"><span>Maintain photogallery</span></a></li>
        <li><a href="uploadphoto.aspx"><span>Add photos</span></a></li>
        <li id="menu-active"><a href="contactus.aspx"><span>Contact Us</span></a></li>
       
    </ul>
</asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="cpMain" Runat="Server">

<h3 class="tit">Write to us</h3>
			<dl>
				<dt>Milin</dt>
				<dd>milincjoshi@yahoo.com</dd>
				<dt>Vatsal</dt>
				<dd>vatsalshah@gmail.com</dd>
	    	</dl>
</asp:Content>

