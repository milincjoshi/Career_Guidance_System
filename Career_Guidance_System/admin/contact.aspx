<%@ Page Title="" Language="C#" MasterPageFile="~/admin/IMasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="admin_Default" %>
<asp:Content ID="Content3" runat="server" contentplaceholderid="cpmenu1">
    <ul class="box">
       <li><m3><a href="adminhome.aspx"  ><span>Home</span></a></m3></li> <!-- Active -->
			<li><m3><a href="maketest.aspx"><span>Test</span></a></m3></li>
        <li><m3><a href="add_poll_new.aspx"><span>Add Poll</span></a></m3></li>
      
        <li><m3><a href="Readfeedback.aspx"><span>Feedback</span></a></m3></li>
        <li  id="menu-active" ><m3><a href="contact.aspx"><span>Contact Us</span></a></m3></li>
       
    </ul>
</asp:Content>



<asp:Content ID="Content2" runat="server" contentplaceholderid="cpmenu2">
    <ul class="box">
				<li><a href="instituteincomings.aspx" >Institute Incomings</a></li>
				<li><a href="maketest.aspx" >Test</a></li>
				<li ><a href="add_poll_new.aspx" >Poll</a></li>
				<li ><a href="answerinquirey.aspx" >Answer Inquiries</a></li>
				<li><a href="makenewsletter.aspx" >Newsletter</a></li>
				<li><a href="readfeedback.aspx" >Read Feedback</a></li>
				
			</ul>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="cpMain" Runat="Server">
     <h1>Write to us at </h1>
			
			<form id="form1" runat="server">
			
			<fieldset>
				

             <h5> milincjoshi@yahoo.com </h5>
             <h2>-Milin C Joshi</h2>  
              
             <h5> vatsalnshah@yahoo.com</h5>
             <h2>-Vatsal N Shah</h2>

			</fieldset>
					
		</form>
</asp:Content>



