<%@ Page Title="Course" Language="C#" MasterPageFile="~/institute/IMasterPage.master" AutoEventWireup="true" CodeFile="course.aspx.cs" Inherits="institute_Default" %>

<asp:Content ID="Content2" runat="server" contentplaceholderid="cpmenu1">
    <ul class="box">
        <li  id="menu-active" ><a href="institutehome.aspx" ><span>Home</span></a></li> <!-- Active -->
			<li><a href="coursesview.aspx"><span>Courseview</span></a></li>
        <li id="menu-active"><a href="course.aspx"><span>Add Courses</span></a></li>
        <li><a href="Maintainphotos.aspx"><span>Maintain photogallery</span></a></li>
        <li><a href="uploadphoto.aspx"><span>Add photos</span></a></li>
        <li><a href="contactus.aspx"><span>Contact Us</span></a></li>
       
    </ul>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="cpMain" Runat="Server">
    <form id ="form1" runat ="server" >
    <h1>Institute</h1>
    
      <fieldset>
      <legend >courses details offered by you</legend>
            <table class ="nostyle ">
            <tr>
                <td>Course Name</td>
                <td><asp:TextBox ID="t1" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate ="t1" ErrorMessage="Coursename compulsory"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>details</td>
                <td><asp:TextBox ID="textbox2" runat ="server" TextMode="MultiLine" Height="84px" 
                        Width="183px" ></asp:TextBox></td>
            </tr>
            <tr>
                <td>fees</td>
                <td><asp:TextBox ID="textbox3" runat ="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="button1" runat ="server" 
                        Text ="add more" onclick="button1_Click" /></td>
                
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            </tr>
             <tr>
              
                
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" Text="COURSE ADDED" Visible="False"></asp:Label>
                </td>
            </tr>
            </table>
      </fieldset>
    </form>
</asp:Content>

