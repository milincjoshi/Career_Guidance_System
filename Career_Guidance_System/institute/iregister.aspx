<%@ Page Language="C#" Title="Institute Register" AutoEventWireup="true" CodeFile="iregister.aspx.cs" Inherits="institute_ins_register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta http-equiv="content-language" content="en" />
	<meta name="robots" content="noindex,nofollow" />
	<link rel="stylesheet" media="screen,projection" type="text/css" href="css/reset.css" /> <!-- RESET -->
	<link rel="stylesheet" media="screen,projection" type="text/css" href="css/main.css" /> <!-- MAIN STYLE SHEET -->
	<link rel="stylesheet" media="screen,projection" type="text/css" href="css/2col.css" title="2col" /> <!-- DEFAULT: 2 COLUMNS -->
	<link rel="alternate stylesheet" media="screen,projection" type="text/css" href="css/1col.css" title="1col" /> <!-- ALTERNATE: 1 COLUMN -->
	<!--[if lte IE 6]><link rel="stylesheet" media="screen,projection" type="text/css" href="css/main-ie6.css" /><![endif]--> <!-- MSIE6 -->
	<link rel="stylesheet" media="screen,projection" type="text/css" href="css/style.css" /> <!-- GRAPHIC THEME -->
	<link rel="stylesheet" media="screen,projection" type="text/css" href="css/mystyle.css" /> <!-- WRITE YOUR CSS CODE HERE -->
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/switcher.js"></script>
	<script type="text/javascript" src="js/toggle.js"></script>
	<script type="text/javascript" src="js/ui.core.js"></script>
	<script type="text/javascript" src="js/ui.tabs.js"></script>
	<script type="text/javascript">
	    $(document).ready(function () {
	        $(".tabs > ul").tabs();
	    });
	</script>
	<title>Admin</title>
</head>

<body>

<div id="main">

	<!-- Tray -->
	<div id="tray" class="box">

		<p class="f-left box">

			<!-- Switcher -->
			<span class="f-left" id="switcher">
				<a href="#" rel="1col" class="styleswitch ico-col1" title="Display one column"></a>
				<a href="#" rel="2col" class="styleswitch ico-col2" title="Display two columns"><img src="design/switcher-2col.gif" alt="2 Columns" /></a>
			</span>

		

		</p>

		<p class="f-right"><strong><a href="../login/institute_login.html" id="logout">Login</a></strong></p>

	</div> <!--  /tray -->

	<hr class="noscreen" />

	<!-- Menu -->
	<div id="menu" class="box">

    
    </div> <!-- /header -->

	<hr class="noscreen" />

	<!-- Columns -->
	<div id="cols" class="box">

		<!-- Aside (Left Column) -->
		<div id="aside" class="box">

			<div class="padding box">

				<!-- Logo (Max. width = 200px) -->
				<p id="logo">
                    <img alt="logo" src="images/Usdfabfajfbntitled.png" />
                    
                    </p>

				<!-- Search -->
				<form action="#" method="get" id="search">
						</form>

			</div> <!-- /padding -->

		</div> <!-- /aside -->

		<hr class="noscreen" />

		<!-- Content (Right Column) -->
		<div id="content" class="box">

		<form id="form1" runat="server">
			<h1>Institute</h1>
			<fieldset>
				<legend>Registration</legend>
				   <table>
                        <tr>
                            <td>
                            <asp:Label ID="iname" runat="server" Text="Name"></asp:Label>
                            </td>
                            <td>
                            <asp:TextBox ID="name" runat="server" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rf1" ControlToValidate="name" runat="server" ErrorMessage="Please enter your name"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                   <tr>
                            <td>
                            <asp:Label ID="iaddr" runat="server" Text="Address"></asp:Label>
                            </td>
                            <td>
                            <asp:TextBox ID="addr" runat="server" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rf2" ControlToValidate="addr" runat="server" ErrorMessage="Please enter your Address"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                   <tr>
                            <td>
                            <asp:Label ID="ino" runat="server" Text="Helpline no"></asp:Label>
                            </td>
                            <td>
                            <asp:TextBox ID="helpline" runat="server" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rf3" ControlToValidate="helpline" runat="server" ErrorMessage="Please enter your name"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="re4" runat="server" ControlToValidate="helpline" ValidationExpression="\d{10}" ErrorMessage="Enter valid Helpline number"></asp:RegularExpressionValidator>
                            </td>

                        </tr>
                   <tr>
                            <td>
                            <asp:Label ID="icat" runat="server" Text="Category"></asp:Label>
                            </td>
                            <td>
                            <asp:TextBox ID="category" runat="server" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rf4" ControlToValidate="category" runat="server" ErrorMessage="Please enter category"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                   <tr>
                            <td>
                            <asp:Label ID="isubcat" runat="server" Text="Subcategory"></asp:Label>
                            </td>
                            <td>
                            <asp:TextBox ID="Subcategory" runat="server" ></asp:TextBox>
                            </td>
                        </tr>
                   <tr>
                            <td>
                            <asp:Label ID="icity" runat="server" Text="City"></asp:Label>
                            </td>
                            <td>
                            <asp:TextBox ID="City" runat="server" ></asp:TextBox>
                            </td>
                        </tr>
                   <tr>
                            <td>
                            <asp:Label ID="istate" runat="server" Text="State"></asp:Label>
                            </td>
                            <td>
                            <asp:TextBox ID="State" runat="server" ></asp:TextBox>
                            </td>
                        </tr>
                   <tr>
                            <td>
                            <asp:Label ID="icountry" runat="server" Text="Country"></asp:Label>
                            </td>
                            <td>
                            <asp:DropDownList ID="cont" runat="server">
                            <asp:ListItem text="India"></asp:ListItem>
                            <asp:ListItem text="U.S.A"></asp:ListItem>
                            <asp:ListItem text="Canada"></asp:ListItem>
                            <asp:ListItem text="London"></asp:ListItem>
                            <asp:ListItem text="Newsland"></asp:ListItem>
                            </asp:DropDownList>
                            </td>
                        </tr>
                   <tr>
                            <td>
                            <asp:Label ID="iabout" runat="server" Text="About"></asp:Label>
                            </td>
                            <td>
                            <asp:TextBox TextMode="MultiLine" ID="about" runat="server" ></asp:TextBox>
                            </td>
                        </tr>
                   <tr>
                            <td>
                            <asp:Label ID="iaff" runat="server" Text="Affiliated"></asp:Label>
                            </td>
                            <td>
                            <asp:TextBox ID="aff" runat="server" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rf5" ControlToValidate="aff" runat="server" ErrorMessage="Please enter Affiliated by"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                   <tr>
                            <td>
                            <asp:Label ID="iweb" runat="server" Text="Website"></asp:Label>
                            </td>
                            <td>
                            <asp:TextBox ID="website" runat="server" ></asp:TextBox>
                            </td>
                        </tr>
                   <tr>
                            <td>
                            <asp:Label ID="iemail" runat="server" Text="Email"></asp:Label>
                            </td>
                            <td>
                            <asp:TextBox ID="Email" runat="server" ></asp:TextBox>
                            <asp:RegularExpressionValidator ControlToValidate="Email" ID="mailvalidate" runat="server" ValidationExpression="\S+@\S+\.\S+" ErrorMessage="Invalid Email" ></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                   <tr>
                            <td>
                            <asp:Label ID="ipass" runat="server" Text="Password"></asp:Label>
                            </td>
                            <td>
                            <asp:TextBox ID="password" TextMode="Password" runat="server" ></asp:TextBox>
                            </td>
                        </tr>
                   <tr>
                            <td>
                            <asp:Label ID="iapprov" runat="server" Text="Approved"></asp:Label>
                            </td>
                            <td>
                            <asp:TextBox ID="Approved" runat="server" ></asp:TextBox>
                            </td>
                        </tr>
                   <tr>
                            <td>
                            <asp:Label ID="ilogo" runat="server" Text="Logo"></asp:Label>
                            </td>
                            <td>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </td>
                        </tr>
                   <tr>
                            <td>
                                <asp:Button ID="isignup" runat="server" Text="sign up" 
                                    onclick="isignup_Click" />
                            </td>
                            <td>
                                <asp:Button ID="cancel" runat="server" Text="cancel" />
                            </td>
                        </tr>
                   
                   </table>
				
			</fieldset>
					
		</form>
		

		</div> <!-- /content -->

	</div> <!-- /cols -->

	<hr class="noscreen" />

	<!-- Footer -->

</body>
</html>

