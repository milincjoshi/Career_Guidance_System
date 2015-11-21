<%@ Page Language="C#" Title="Institute Profile" MasterPageFile="~/institute/IMasterPage.master" AutoEventWireup="true" CodeFile="Institute profile.aspx.cs" Inherits="institute_Default2" %>


<asp:Content ID="Content2" runat="server" contentplaceholderid="cpmenu1">
    <ul class="box">
        <li><a href="institutehome.aspx" ><span>Home</span></a></li> <!-- Active -->
			<li><a href="coursesview.aspx"><span>Courseview</span></a></li>
        <li><a href="course.aspx"><span>Add Courses</span></a></li>
        <li><a href="Maintainphotos.aspx"><span>Maintain photogallery</span></a></li>
        <li><a href="uploadphoto.aspx"><span>Add photos</span></a></li>
        <li><a href="contactus.aspx"><span>Contact Us</span></a></li>
       
    </ul>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="cpMain" Runat="Server">
    <h1>Institute</h1>
			
			<form id="form1" runat="server">
			
			<fieldset>
				<legend >Institute Profile</legend>
				    <table class="nostyle">
				    	<tr>
					    	<td style="width:70px;"><h5>Institute id:</h5></td>
					    	<td><h6><asp:TextBox ID="txt1" runat="server"></asp:TextBox> </h6></td> 
                                    
					
                    	<tr>
					    	<td style="width:70px;"><h5>Category:</h5></td>
					    	<td><h6><asp:TextBox ID="txt2" runat="server"></asp:TextBox> </h6></td> 
                                    
					
                    	<tr>
					    	<td style="width:70px;"><h5>Name: </h5> </td>
					    	<td> <h6><asp:TextBox ID="txt3" runat="server"></asp:TextBox> </h6></td> 
                                    
					
                    	<tr>
					    	<td style="width:70px;"><h5>Address:</h5></td>
					    	<td><h6><asp:TextBox ID="txt4" runat="server"></asp:TextBox> </h6></td>
				    	</tr>
        
                        <tr>
                        
                        <td>     <asp:Button ID="b1" runat="server" Text="Edit" /> </td> 
                        </tr>
				</table>
				
			</fieldset>
					
		</form>
			

</asp:Content>

