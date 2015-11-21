<%@ Page Language="C#" MasterPageFile="~/admin/IMasterPage.master" AutoEventWireup="true" CodeFile="instituteincomings.aspx.cs" Inherits="admin_Default2" Title="Untitled Page" %>
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
			
			<form id="form1" runat="server">
			
      <h1>Admin</h1>
			
			<fieldset>
				<legend>Institute Incomings</legend>
			</fieldset>
			<asp:GridView ID="gv1" runat="server" AutoGenerateColumns="false" 
                >
            <Columns>
            
            <asp:TemplateField>
                <HeaderTemplate> Name </HeaderTemplate>
                <ItemTemplate> <asp:Label ID="l1" runat="server" Text='<%# Eval("name") %>'></asp:Label>  </ItemTemplate>
            </asp:TemplateField>
             

            <asp:TemplateField>
                <ItemTemplate> <asp:HyperLink ID="link1" runat="server" Text="View Details"  NavigateUrl='<%# "institute_detail.aspx?iid=" + Eval("Id_institute") %>'> </asp:HyperLink>  </ItemTemplate>
            </asp:TemplateField>

            </Columns>
            </asp:GridView>
            
            		    </form>

</asp:Content>

