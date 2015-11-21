<%@ Page Title="Course View" Language="C#" MasterPageFile="~/institute/IMasterPage.master" AutoEventWireup="true" CodeFile="coursesview.aspx.cs" Inherits="institute_Default" %>

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
 <form id ="form1" runat ="server" >
    <h1>Institute</h1>
    
      <fieldset>
      <legend >courses offered by you
      
   <asp:GridView ID="g2" runat ="server" AutoGenerateColumns="False" 
                      EnableModelValidation="True" 
                         >
                        <Columns>
                        <asp:BoundField HeaderText="Id_course" DataField="Id_course" SortExpression="Id_course" />
                            <asp:BoundField HeaderText="Id_institute" DataField="Id_institute" SortExpression="Id_institute" />
                            <asp:BoundField HeaderText="Coursename" DataField="Coursename" SortExpression="Coursename" />
                            <asp:BoundField HeaderText="Details" DataField="Details" 
                                SortExpression="Details" />
                                <asp:BoundField HeaderText="Fees" DataField="Fees" 
                                SortExpression="Fees" />
                                
                                
                            </Columns>
				    </asp:GridView>
                    </legend>
                    </fieldset> 
                    </form> 
                
</asp:Content>

