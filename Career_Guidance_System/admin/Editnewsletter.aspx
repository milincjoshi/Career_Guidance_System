<%@ Page Title="" Language="C#" MasterPageFile="~/admin/IMasterPage.master" AutoEventWireup="true" CodeFile="Editnewsletter.aspx.cs" Inherits="admin_Default2" %>
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
				<li  ><a href="add_poll_new.aspx" >Poll</a></li>
				<li ><a href="answerinquirey.aspx" >Answer Inquiries</a></li>
				<li id="submenu-active" ><a href="makenewsletter.aspx" >Newsletter</a></li>
				<li><a href="readfeedback.aspx" >Read Feedback</a></li>
				
			</ul>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="cpMain" Runat="Server">
    <h1>Newsletter</h1>
			
			<form id="form1" runat="server">
			
			<fieldset>
		      		<legend>Newsletter</legend>
				    <table class="nostyle">
                        <tr>
                            <td>

                                <asp:Button ID="button1" runat ="server" Text ="Make Newsletter" OnClick="button1_Click"  />
                        
                            </td>

                            <td>   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                         <asp:Button ID="button2" runat ="server" Text ="Edit Newsletter" Enabled="False" />
                             
                            </td>
                     
                            
                        </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" Width="318px"  >
                                <Columns>
                                    <asp:BoundField HeaderText="Id" />
                                    <asp:BoundField HeaderText="Title" ReadOnly="True" />
                                    <asp:ButtonField ButtonType="Button" CommandName="Edit" HeaderText="Action" ShowHeader="True" Text="Edit" />
                                    <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Delete" />
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                       
	    
                    </table> 

				    	
			</fieldset>
					
		</form>

</asp:Content>

