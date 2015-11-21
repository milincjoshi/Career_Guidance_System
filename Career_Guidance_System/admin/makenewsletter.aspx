<%@ Page Title="" Language="C#" MasterPageFile="~/admin/IMasterPage.master" AutoEventWireup="true" CodeFile="makenewsletter.aspx.cs" Inherits="admin_Default2" %>
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
				<li><a href="maketest.aspx" >Test</a></li>
				<li  ><a href="add_poll_new.aspx" >Poll</a></li>
				<li ><a href="answerinquirey.aspx" >Answer Inquiries</a></li>
				<li  id="submenu-active" ><a href="makenewsletter.aspx" >Newsletter</a></li>
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

                                <asp:Button ID="button1" runat ="server" Text ="Make Newsletter"  OnClick="button1_Click" Enabled="False"  />
                        
                            </td>
                            <td></td>
                            <td>

                            <asp:Button ID="button2" runat ="server" Text ="Edit Newsletter" OnClick="button2_Click" />
                             
                            </td>
                     

                        </tr>
                     
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Title"></asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                       <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Date"></asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr> 
                         <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                          <tr>
                            <td>
                                <asp:Label ID="Label4"  runat="server" Text="Details"></asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server" ></asp:TextBox>
                            </td>
                            <tr>
                            <td>
                            File
                               
                              </td>
                              <td>
                                 <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" />
                              </td>
                        </tr>
                              </tr>
                    
	    
                            <tr>
                            <td>
                                  &nbsp;</td>
                                  <td>
                                  
                                  <asp:Button ID="btnSubmit" runat="server" Text="Send" onclick="btnSubmit_Click" />

                                  </td>

                        </tr>
                                                  
	    
                            <tr>
                            <td>
                                  &nbsp;</td>
                                  <td>
                                  
                                      <asp:Label ID="msg" runat="server" Text=""></asp:Label>

                                  </td>

                        </tr>
                                                  
	    
                    </table> 

				    	
			</fieldset>
					
		</form>
   
</asp:Content>

