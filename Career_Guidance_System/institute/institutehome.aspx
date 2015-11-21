<%@ Page Language="C#" Title="Institute Home" MasterPageFile="~/institute/IMasterPage.master" AutoEventWireup="true" CodeFile="institutehome.aspx.cs" Inherits="institute_Default" %>

<asp:Content ID="Content2" runat="server" contentplaceholderid="cpmenu1">
    <ul class="box">
        <li  id="menu-active" ><a href="institutehome.aspx" ><span>Home</span></a></li> <!-- Active -->
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
				<legend>
				    Institute Inquiries
				<asp:GridView ID="g1" runat ="server" AutoGenerateColumns="False" 
                     onselectedindexchanged="g1_SelectedIndexChanged" EnableModelValidation="True" 
                         >
                        <Columns>
                        <asp:BoundField HeaderText="Id_student" DataField="Id_student" SortExpression="Id_student" />
                            <asp:BoundField HeaderText="Name" DataField="Name" SortExpression="Name" />
                            <asp:BoundField HeaderText="Email" DataField="Email" SortExpression="Email" />
                            <asp:BoundField HeaderText="Phone" DataField="Phone" 
                                SortExpression="Phone" />
                                <asp:BoundField HeaderText="City" DataField="City" 
                                SortExpression="City" />

                        <asp:BoundField HeaderText="About " DataField="About" SortExpression="About" />           
                                 <asp:BoundField HeaderText="Date " DataField="Date" SortExpression="Date" />           
                                

                                                            </Columns>
				    </asp:GridView>
                  </legend>
			</fieldset>
					
		    </form>

</asp:Content>

