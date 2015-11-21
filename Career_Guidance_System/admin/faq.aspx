<%@ Page Title="" Language="C#" MasterPageFile="~/admin/IMasterPage.master" AutoEventWireup="true" CodeFile="faq.aspx.cs" Inherits="admin_Default" %>

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
				<li><a href="instituteincomings.aspx" >Institute Incomings</a></li>
				<li ><a href="maketest.aspx" >Test</a></li>
				<li  ><a href="add_poll_new.aspx" >Poll</a></li>
				<li ><a href="answerinquirey.aspx" >Answer Inquiries</a></li>
				<li  ><a href="makenewsletter.aspx" >Newsletter</a></li>
				
				<li><a href="readfeedback.aspx" >Read Feedback</a></li>
			</ul>
</asp:Content>



<asp:Content ID="Content1" ContentPlaceHolderID="cpMain" Runat="Server">

    <h3 class="tit">FAQ</h3>

        <form id="f1" runat="server">
  
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

                                <Header>

                                    <a href="" class="accordionLink">

                                         <dl>

				                            <dt>What is career guidance system?</dt>

                                         </dl>
                                
                                </a></Header>

                                <Content>

                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp    Career guidance system is a system designed 
       for the better guidance of the users for 
       selecting the appropriate option. This system solves the dilemmas faced by the user for the selection of the career option. There is a test module which is interacted by the user and based on the results of that test, the user is suggested to select the right option for their further studies. The system also provides various other additional facilities like providing updates through newsletter, answering FAQs and inquiries. This system is also helpful to various institutes for advertisingthemselves. They can offer details about various courses they offer. Admin, after logging approves institute and creates polls. Students can fill polls on various topics , give test, ask FAQs and inquiries and at the end provide feedback.   
 
                                </Content>

                            </ajaxToolkit:AccordionPane>

                            <ajaxToolkit:AccordionPane ID="AccordionPane2" runat="server">

                                  <Header>

                                    <a href="" class="accordionLink">

                                         <dl>

				                            <dt>Who can register this system?</dt>

                                         </dl>
                                
                                </a></Header>


                                    <Content>

                                        anyone who is currently a student and needs a guidance for appropriate career option 
                                        can register themselves on this website.
 
                                   </Content>

                            </ajaxToolkit:AccordionPane>
           
                        </Panes>

            </ajaxToolkit:Accordion>

		</fieldset>

	</form>
</asp:Content>



