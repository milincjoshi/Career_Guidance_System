<%@ Page Title="" Language="C#" MasterPageFile="~/admin/IMasterPage.master" AutoEventWireup="true" CodeFile="institute_detail.aspx.cs" Inherits="admin_institute_detail" %>

<asp:Content ID="Content2" runat="server" contentplaceholderid="cpmenu1">
    <ul class="box">
       <li><m3><a href="adminhome.aspx"  ><span>Home</span></a></m3></li> <!-- Active -->
			<li><m3><a href="maketest.aspx"><span>Test</span></a></m3></li>
        <li id="menu-active"><m3><a href="add_poll_new.aspx"><span>Add Poll</span></a></m3></li>
      
        <li><m3><a href="Readfeedback.aspx"><span>Feedback</span></a></m3></li>
        <li ><m3><a href="contact.aspx"><span>Contact Us</span></a></m3></li>
       
    </ul>
</asp:Content>


<asp:Content ID="Content3" runat="server" contentplaceholderid="cpmenu2">
    <ul class="box">
				<li  id="submenu-active"><a href="instituteincomings.aspx" >Institute Incomings</a></li>
				<li><a href="maketest.aspx" >Test</a></li>
				<li  ><a href="add_poll_new.aspx" >Poll</a></li>
				<li ><a href="answerinquirey.aspx" >Answer Inquiries</a></li>
				<li  ><a href="makenewsletter.aspx" >Newsletter</a></li>
				<li><a href="readfeedback.aspx" >Read Feedback</a></li>
				
			</ul>
</asp:Content>



<asp:Content ID="Content1" ContentPlaceHolderID="cpMain" Runat="Server">

	<h1>Institute</h1>
			
			<form id="form1" runat="server">
			
			<fieldset>
				<legend>Details</legend>
				    <table class="nostyle">
				    	<tr>
					    	<td style="width:70px;">Name:</td>
					    	<td><asp:TextBox ID="t1" size="40" runat ="server"  ></asp:TextBox></td>
					
                    	<tr>
					    	<td style="width:70px;">Address:</td>
					    	<td><asp:TextBox size="40" ID="TextBox1" class="input-text" runat="server"/></td>
				    	</tr>
                        <tr>
						    <td style="width:70px;">City:</td>
						    <td><asp:TextBox size="40" ID="TextBox2" class="input-text" runat="server"/></td>
					    </tr>
					    <tr>
						    <td style="width:70px;">State:</td>
						    <td><asp:TextBox size="40" ID="TextBox3" class="input-text" runat="server"/></td>
				    	</tr>
					    <tr>
					         <td style="width:70px;">Country:</td>
					         <td><asp:DropDownList ID="ddl1" runat="server" >
					                <asp:ListItem > India </asp:ListItem>
					                <asp:ListItem > USA</asp:ListItem>
					                <asp:ListItem > UK</asp:ListItem>
					                <asp:ListItem > Australia </asp:ListItem>
					        </asp:DropDownList>
					        </td>
					    </tr>
						<tr>
			    			<td style="width:70px;">About:</td>
				    		<td><asp:TextBox size="40" ID="TextBox4" class="input-text" runat="server"/></td>
					    </tr>
					    <tr>
					    	<td style="width:70px;">Affiliatedby:</td>
				    		<td><asp:TextBox size="40" ID="TextBox5" class="input-text" runat="server"/></td>
					    </tr>
					    <tr>
					        <td style="width:70px;">Category:</td>
					        <td> <asp:DropDownList ID="DropDownList1" runat="server" >
					                <asp:ListItem > Government </asp:ListItem>
					                <asp:ListItem > Private </asp:ListItem>
					            </asp:DropDownList>
					        </td>
				    	</tr>
                        <tr>			
						    <td style="width:70px;">Website:</td>
						    <td><asp:TextBox size="40" ID="TextBox6" class="input-text" runat="server"/></td>
				    	</tr>
				    	<tr>
					    	<td style="width:70px;">E-mail:</td>
						    <td><asp:TextBox size="40" ID="TextBox7" class="input-text" runat="server"/></td>
					    </tr>
					  	
					    <tr>
						    <td style="width:70px;">Helplineno:</td>
						    <td><asp:TextBox size="40" ID="TextBox9" class="input-text" runat="server"/></td>
					    </tr>
					   
					    
					    <tr>
                            <td>
                            </td>
                            <td>
                            <asp:Button ID="bt1" runat = "server" Text ="Accept" onclick="bt1_Click" />
                            <asp:Button ID="Button1" runat = "server" Text ="Reject" />
                            
                            </td>
                        </tr>
				</table>
				
			</fieldset>
					
		</form>
			


</asp:Content>

