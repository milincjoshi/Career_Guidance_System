<%@ Page Title="" Language="C#" MasterPageFile="~/admin/IMasterPage.master" AutoEventWireup="true" CodeFile="maketest.aspx.cs" Inherits="admin_Default3" %>
<%@ Register
    Assembly="AjaxControlToolkit"
    Namespace="AjaxControlToolkit"
    TagPrefix="ajaxToolkit" %>
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
				<li ><a href="instituteincomings.aspx" >Institute Incomings</a></li>
				<li id="submenu-active"><a href="maketest.aspx" >Test</a></li>
				<li  ><a href="add_poll_new.aspx" >Poll</a></li>
				<li ><a href="answerinquirey.aspx" >Answer Inquiries</a></li>
				<li   ><a href="makenewsletter.aspx" >Newsletter</a></li>
				<li><a href="readfeedback.aspx" >Read Feedback</a></li>
				
			</ul>
</asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="cpMain" Runat="Server">
    
     <h1>Test</h1>
			
			<form id="form1" runat="server">
			
			<fieldset>
			<legend >Test</legend>
                
                <ajaxToolkit:ToolkitScriptManager id="m1" runat="server">
                </ajaxToolkit:ToolkitScriptManager>
               
             <ajaxToolkit:Accordion ID="MyAccordion" runat="server" SelectedIndex="0"
            HeaderCssClass="accordionHeader" HeaderSelectedCssClass="accordionHeaderSelected"
            ContentCssClass="accordionContent" FadeTransitions="false" FramesPerSecond="40" 
            TransitionDuration="250" AutoSize="None" RequireOpenedPane="false" SuppressHeaderPostbacks="true">
       
           <Panes>

            <ajaxToolkit:AccordionPane ID="AccordionPane1" runat="server">
                <Header><a href="" class="accordionLink">Make Test</a></Header>
                <Content>
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="label1" runat="server" Text="Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="label2" runat="server" Text="Category"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="label3" runat="server" Text="Subject"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                      
                        <tr>
                            <td>
                                <asp:Label ID="label10" runat="server" Text="No of que"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                         <td>
                             <asp:Button ID="Button4" runat="server" Text="Done" OnClick="Button4_Click" />
                         </td>
                          <td>
                             <asp:Button ID="Button5" runat="server" Text="Cancel" />
                         </td>
                        
                         </tr>
                    </table>
                </Content>
            </ajaxToolkit:AccordionPane>
            <ajaxToolkit:AccordionPane ID="AccordionPane2" runat="server">
                <Header><a href="" class="accordionLink">2. Add Questions</a></Header>
                <Content>
                <table>
                        <tr>
                            <td>
                                <asp:Label ID="label5" runat="server" Text="Question"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="label6" runat="server" Text="Option 1"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="label7" runat="server" Text="Option 2"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="label8" runat="server" Text="Option 3"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="label9" runat="server" Text="Option 4"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="correctans" runat="server" Text="correct ans"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                         <td><asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" /></td>
                         <td><asp:Button ID="Button2" runat="server" Text="Cancel" /></td>
                         </tr>
                         <tr>
                         <td colspan ="2">
                             <asp:Button ID="Button3" runat="server" Text="done" />
                         </td>
                        
                         </tr>
                    </table>
 
                                   </Content>
            </ajaxToolkit:AccordionPane>
           
            </Panes>
        </ajaxToolkit:Accordion>
			  
			</fieldset>
					
		</form>

</asp:Content>