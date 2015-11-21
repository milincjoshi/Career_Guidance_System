<%@ Page Title="Maintain Photos" Language="C#" MasterPageFile="~/institute/IMasterPage.master" AutoEventWireup="true" CodeFile="Maintainphotos.aspx.cs" Inherits="institute_Maintainphotos" %>


<asp:Content ID="Content2" runat="server" contentplaceholderid="cpmenu1">
    <ul class="box">
        <li  ><a href="institutehome.aspx" ><span>Home</span></a></li> <!-- Active -->
			<li><a href="coursesview.aspx"><span>Courseview</span></a></li>
        <li><a href="course.aspx"><span>Add Courses</span></a></li>
        <li  id="menu-active"><a href="Maintainphotos.aspx"><span>Maintain photogallery</span></a></li>
        <li><a href="uploadphoto.aspx"><span>Add photos</span></a></li>
        <li><a href="contactus.aspx"><span>Contact Us</span></a></li>
       
    </ul>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="cpmain" Runat="Server">

<asp:DataList ID="dl1" runat="server" RepeatColumns="3">
<ItemTemplate>
<image src='<%# Eval("Photogal") %>' width="200px" height="200px"> </image>
</ItemTemplate>
</asp:DataList>

</asp:Content>

