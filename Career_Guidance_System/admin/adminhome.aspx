<%@ Page Language="C#" MasterPageFile="~/admin/IMasterPage.master" AutoEventWireup="true" CodeFile="adminhome.aspx.cs" Inherits="admin_Default" Title="Untitled Page" %>
<asp:Content ID="Content2" runat="server" contentplaceholderid="cpmenu1">
    <ul class="box">
       <li><m3><a href="adminhome.aspx"  ><span>Home</span></a></m3></li> <!-- Active -->
			<li><m3><a href="maketest.aspx"><span>Test</span></a></m3></li>
        <li ><m3><a href="add_poll_new.aspx"><span>Add Poll</span></a></m3></li>
      
        <li><m3><a href="Readfeedback.aspx"><span>Feedback</span></a></m3></li>
        <li ><m3><a href="contact.aspx"><span>Contact Us</span></a></m3></li>
       
    </ul>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="cpMain" Runat="Server">
    <h1>Admin work panel</h1>
<form id="f2" runat ="server" >

<table>

<tr>
<td>
<h2>welcome admin</h2>
<h3>This is your home page for the website
</br>
On the left panel you can see the tasks that you can perform
</br>

</h3>
</td>
</tr>

</table>
  
  
</form>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="cpmenu2">
    <ul class="box">
				<li><a href="instituteincomings.aspx" >Institute Incomings</a></li>
				<li><a href="maketest.aspx" >Test</a></li>
				<li ><a href="add_poll_new.aspx" >Poll</a></li>
				<li><a href="answerinquirey.aspx" >Answer Inquiries</a></li>
				<li><a href="makenewsletter.aspx" >Newsletter</a></li>
				
				<li><a href="readfeedback.aspx" >Read Feedback</a></li>
			</ul>
</asp:Content>


