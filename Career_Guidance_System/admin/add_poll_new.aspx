<%@ Page Language="C#" MasterPageFile="~/admin/IMasterPage.master" AutoEventWireup="true" CodeFile="add_poll_new.aspx.cs" Inherits="admin_add_poll_new" Title="Untitled Page" %>

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
				<li><a href="instituteincomings.aspx" >Institute Incomings</a></li>
				<li><a href="maketest.aspx" >Test</a></li>
				<li id="submenu-active"><a href="add_poll_new.aspx" >Poll</a></li>
			

				<li><a href="makenewsletter.aspx" >Newsletter</a></li>
				
				
			</ul>
</asp:Content>

<asp:Content ID="Content1" runat="server" contentplaceholderid="cpMain">

		<form id="form1" runat="server">
			
			<fieldset>
				<legend>Add Question</legend>
				    <table class="nostyle">
				    	<tr>
					    	<td style="width:70px;">Question:</td>
					    	<td><asp:TextBox ID="txtques1" size="40" runat="server" class="input-text" ></asp:TextBox>
                            <asp:RequiredFieldValidator  ID="rf2" runat="server" ControlToValidate="txtques1" ErrorMessage="Question compulsory" Visible ="true"></asp:RequiredFieldValidator>
                                    </td> 
                           </tr>         
					
                    	<tr>
                    		<td style="width:70px;">Option1:</td>
					    	<td><asp:TextBox size="40" ID="txtop1" class="input-text" runat="server"/>
                            <asp:RequiredFieldValidator ID="rf3" runat="server" ControlToValidate="txtop1" ErrorMessage="Option1 compulsory" Visible ="true"></asp:RequiredFieldValidator>
                            </td>
                              
				    	</tr>
				    	<tr>
                    		<td style="width:70px;">Option2:</td>
					    	<td><asp:TextBox size="40" ID="txtop2" class="input-text" runat="server"/>
                             <asp:RequiredFieldValidator ID="rf4" runat="server" ControlToValidate="txtop2" ErrorMessage="Option2 compulsory" Visible ="true"></asp:RequiredFieldValidator>
				    	</td>
                        </tr>
				    	<tr>
                    		<td style="width:70px;">Option3:</td>
					    	<td><asp:TextBox size="40" ID="txtop3" class="input-text" runat="server"/>
                            <asp:RequiredFieldValidator ID="rf5" runat="server" ControlToValidate="txtop3" ErrorMessage="Option3 compulsory" Visible ="true"></asp:RequiredFieldValidator>
				    	</td>
                        </tr>

				    	<tr>
                    		<td style="width:70px;">Option4:</td>
					    	<td><asp:TextBox size="40" ID="txtop4" class="input-text" runat="server"/>
                            <asp:RequiredFieldValidator ID="rf6" runat="server" ControlToValidate="txtop4" ErrorMessage="Option4 compulsory" Visible ="true"></asp:RequiredFieldValidator>
				    	</td>
                        </tr>
                          <tr>  
                          <td>
                          <asp:Button ID="add" runat = "server" Text ="Add" Width="70px" 
                                  onclick="add_Click"   />
                          </td>
                          
                          <td><asp:Button ID="cancel" runat = "server" Text ="Cancel" Width="73px" 
                                  onclick="cancel_Click"/></td>
                        </tr>
				</table>
				
			</fieldset>
					
		</form>
	

</asp:Content>


