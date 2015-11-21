<%@ Page Title="" Language="C#" MasterPageFile="~/admin/IMasterPage.master" AutoEventWireup="true" CodeFile="edittest.aspx.cs" Inherits="admin_Default2" %>
<asp:Content ID="Content2" runat="server" contentplaceholderid="cpmenu1">
    <ul class="box">
       <li><m3><a href="adminhome.aspx"  ><span>Home</span></a></m3></li> <!-- Active -->
			<li  id="menu-active"><m3><a href="maketest.aspx"><span>Test</span></a></m3></li>
        <li><m3><a href="add_poll_new.aspx"><span>Add Poll</span></a></m3></li>
      
        <li><m3><a href="Readfeedback.aspx"><span>Feedback</span></a></m3></li>
        <li ><m3><a href="contact.aspx"><span>Contact Us</span></a></m3></li>
       
    </ul>
</asp:Content>



<asp:Content ID="Content3" runat="server" contentplaceholderid="cpmenu2">
    <ul class="box">
				<li><a href="instituteincomings.aspx" >Institute Incomings</a></li>
				<li id="submenu-active"><a href="maketest.aspx" >Test</a></li>
				<li  ><a href="add_poll_new.aspx" >Poll</a></li>
				<li ><a href="answerinquirey.aspx" >Answer Inquiries</a></li>
				<li  ><a href="makenewsletter.aspx" >Newsletter</a></li>
				<li><a href="readfeedback.aspx" >Read Feedback</a></li>
				
			</ul>
</asp:Content>



<asp:Content ID="Content1" ContentPlaceHolderID="cpMain" Runat="Server">
     <h1>Test</h1>
			
			<form id="form1" runat="server">
			
			<fieldset>
				<legend>Edit</legend>
                <table>
                    <tr>
                        <td>
                            <asp:gridview id="gridview1" runat="server" AutoGenerateColumns="False" Height="304px" Width="446px" >
                    <Columns>
                        <asp:BoundField HeaderText="Question" />
                        <asp:BoundField HeaderText="Option1" />
                        <asp:BoundField HeaderText="Option2" />
                        <asp:BoundField HeaderText="Option3" />
                        <asp:BoundField HeaderText="Option4" />
                    </Columns>
                                </asp:gridview>
                        </td>
                        <tr>
<td>
    <asp:button id="button1" runat="server" text="Done" />
</td>
                            </tr>
                    </tr>
                </table>
                
               
			</fieldset>
					
		</form>
</asp:Content>

