<%@ Page Title="Upload Photos" Language="C#" MasterPageFile="~/institute/IMasterPage.master" AutoEventWireup="true" CodeFile="uploadphoto.aspx.cs" Inherits="institute_Default2" %>

<asp:Content ID="Content2" runat="server" contentplaceholderid="cpmenu1">
    <ul class="box">
        <li><a href="institutehome.aspx" ><span>Home</span></a></li> <!-- Active -->
			<li><a href="coursesview.aspx"><span>Courseview</span></a></li>
        <li><a href="course.aspx"><span>Add Courses</span></a></li>
        <li><a href="Maintainphotos.aspx"><span>Maintain photogallery</span></a></li>
        <li id="menu-active"><a href="uploadphoto.aspx"><span>Add photos</span></a></li>
        <li><a href="contactus.aspx"><span>Contact Us</span></a></li>
       
    </ul>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="cpMain" Runat="Server">
    <form id="form1" runat="server">
        <h1>Institute</h1>
        <h2>additional information</h2>
      <fieldset>
      <legend>upload photos</legend>
        <table class ="nostyle ">    
            <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Height="89px" Width="100px" />
                <asp:FileUpload ID="FileUpload1" runat="server" /></td>
            </tr>
            <tr>
            <td><asp:Button ID="Button1" runat="server" Text="upload" onclick="Button1_Click" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td><asp:Literal ID="ltr" runat="server" ></asp:Literal></td>
            </tr>

       
      </fieldset>  
    </table>
    </form>
</asp:Content>

