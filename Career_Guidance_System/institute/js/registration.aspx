<%@ Page Language="C#" MasterPageFile="~/institute/IMasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="institute_temp" Title="Untitled Page" %>

<%-- Add content controls here --%><asp:Content ID="Content1" runat="server" 
    contentplaceholderid="cpMain">

			<h1>Institute</h1>
			
			<form id="form1" runat="server">
			
			<fieldset>
				<legend>Registration</legend>
				    <table class="nostyle">
				    	<tr>
					    	<td style="width:70px;">Name:</td>
					    	<td><asp:TextBox ID="txtname" size="40" runat ="server" class="input-text " ></asp:TextBox></td>
					
                    	<tr>
					    	<td style="width:70px;">Address:</td>
					    	<td><asp:TextBox size="40" ID="txtaddress" class="input-text" runat="server"/></td>
				    	</tr>
                        <tr>
						    <td style="width:70px;">City:</td>
						    <td><asp:TextBox size="40" ID="txtcity" class="input-text" runat="server"/></td>
					    </tr>
					    <tr>
						    <td style="width:70px;">State:</td>
						    <td><asp:TextBox size="40" ID="txtstate" class="input-text" runat="server"/></td>
				    	</tr>
					    <tr>
					         <td style="width:70px;">Country:</td>
					         <td><asp:DropDownList ID="ddlcountry" runat="server" >
					                <asp:ListItem > India </asp:ListItem>
					                <asp:ListItem > USA</asp:ListItem>
					                <asp:ListItem > UK</asp:ListItem>
					                <asp:ListItem > Australia </asp:ListItem>
					        </asp:DropDownList>
					        </td>
					    </tr>
						<tr>
			    			<td style="width:70px;">About:</td>
				    		<td><asp:TextBox size="40" ID="txtabout" class="input-text" runat="server"/></td>
					    </tr>
					    <tr>
					    	<td style="width:70px;">Affiliated:</td>
				    		<td><asp:TextBox size="40" ID="txtaffiliated" class="input-text" runat="server"/></td>
					    </tr>
					    <tr>
					        <td style="width:70px;">Category:</td>
					        <td> <asp:DropDownList ID="ddlcategory" runat="server" >
					                <asp:ListItem > Government </asp:ListItem>
					                <asp:ListItem > Private </asp:ListItem>
					            </asp:DropDownList>
					        </td>
				    	</tr>
                        <tr>
					        <td style="width:70px;">Subcategory:</td>
					        <td> <asp:DropDownList ID="ddlsub" runat="server" >
					                <asp:ListItem > Government </asp:ListItem>
					                <asp:ListItem > Private </asp:ListItem>
					            </asp:DropDownList>
					        </td>
				    	</tr>
                        
                        <tr>			
						    <td style="width:70px;">Website:</td>
						    <td><asp:TextBox size="40" ID="txtwebsite" class="input-text" runat="server"/></td>
				    	</tr>
				    	<tr>
					    	<td style="width:70px;">E-mail:</td>
						    <td><asp:TextBox size="40" ID="txtemail" class="input-text" runat="server"/></td>
					    </tr>
					    <tr>
						    <td style="width:70px;">Password:</td>
						    <td><asp:TextBox size="40" ID="txtpassword" class="input-text" runat="server"/></td>
					    </tr>	
					   
                        <tr>
						    <td style="width:70px;">Helplineno:</td>
						    <td><asp:TextBox size="40" ID="txthelp" class="input-text" runat="server"/></td>
					    </tr>
					    <tr>
						    <td style="width:70px;">Approved:</td>
						    <td><asp:TextBox size="40" ID="txtapp" class="input-text" runat="server"/></td>
					    </tr>
					    
					    <tr>
					        <td><asp:CheckBox ID="ch1" runat="server" Text="terms & conditions" Checked="false" /> </td>
                            <td> <asp:TextBox runat="server" ReadOnly="True" TextMode="MultiLine" Wrap="False">dear 
                                institute holder,by clicking the checkbox you accept all our terms and 
                                conditions</asp:TextBox></td>
					        <td>  
                            </td>
					    </tr>
                        <tr>
                            <td>
                            </td>
                            <td><asp:Button ID="bt1" runat = "server" Text ="next" onclick="bt1_Click" /></td>
                        </tr>
				</table>
				
			</fieldset>
					
		</form>
			

</asp:Content>

