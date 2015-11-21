<%@ Page Title="" Language="C#" MasterPageFile="~/admin/IMasterPage.master" AutoEventWireup="true" CodeFile="answerinquirey.aspx.cs" Inherits="admin_Default" %>

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
				<li ><a href="add_poll_new.aspx" >Poll</a></li>
				<li id="submenu-active"><a href="answerinquirey.aspx" >Answer Inquiries</a></li>
				<li><a href="makenewsletter.aspx" >Newsletter</a></li>
				<li><a href="readfeedback.aspx" >Read Feedback</a></li>
				
			</ul>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="cpMain" Runat="Server">
<form id="f1" runat="server">
    <table class="nostyle">
        <tr>
            <td style="width: 124px">
                <asp:Label ID="Label1" runat="server" Text="No" ></asp:Label>
            </td>
            <td style="width: 185px">
                <asp:TextBox ID="TextBox1" runat="server" Enabled="false" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td style="width: 124px">
                <asp:Label ID="Label2" runat="server" Text="From"></asp:Label>
            </td>
            <td style="width: 185px">
                <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True" Enabled="false"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td style="width: 124px">
                <asp:Label ID="Label3" runat="server" Text="Subject"></asp:Label>
            </td>
            <td style="width: 185px">
                <asp:TextBox ID="TextBox3" runat="server" Enabled="false" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td style="width: 124px">
                <asp:Label ID="Label4" runat="server" Text="Question"></asp:Label>
            </td>
            <td style="width: 185px">
                <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True" Enabled="false" TextMode="MultiLine" 
                    Width="381px"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td style="width: 124px">
                <asp:Label ID="Label5" runat="server" Text="Answer"></asp:Label>
            </td>
            <td style="width: 185px">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" 
                    Width="381px"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td style="width: 124px">
                <asp:Button ID="Button1" runat="server" Text="Send" onclick="Button1_Click" />
            </td>
            <td style="width: 185px">
                <asp:Button ID="Button2" runat="server" Text="Cancel" />
            </td>
        </tr>
    </table>
</form>
</asp:Content>

