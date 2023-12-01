<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addproblem.aspx.cs" Inherits="Demo.addproblem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="login/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="login/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login/css/util.css">
	<link rel="stylesheet" type="text/css" href="login/css/main.css">
<!--===============================================================================================-->
		<style>
			.first{
				margin-top:;
			}
			/*.CA{
				margin-top:20px;
			}
			.ML{
				margin-top:30px;
			}*/
			.scd{
				margin-top:-120px;
			}

		</style>
		<div class="limiter first">
			<div class="container-login100">
				<div class="wrap-login100">
					<div class="mx-auto row">
						<center class="scd"><h2>Apply to add Problem</h2></center>
					</div>
					
					<div class="  row">
						
						<div class="col-md-7">
							<label>Problem Name</label>
							<div class="form-group">
							   <asp:TextBox class="form-control" ID="TextBox1" runat="server">
								   
							   </asp:TextBox>
							</div>
						</div>
						<div class="col-md-4">
						  <label>Difficulty</label>
						  <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
							  <asp:ListItem Text="Easy" Value="easy"></asp:ListItem>
							  <asp:ListItem Text="Medium" Value="medium"></asp:ListItem>
							  <asp:ListItem Text="Hard" Value="hard"></asp:ListItem>
						  </asp:DropDownList>
						</div>
					</div>
					<div class=" row">
						
							<div class="col-md-24">
								<label>Problem Link</label>
								<div class="form-group">
							   <asp:TextBox class="form-control" ID="TextBox2" runat="server">
								   
							   </asp:TextBox>
							</div>
							</div>

					</div>
					
					<div class="mx-auto row">
						
						<div class="col">
								
							<asp:LinkButton id="button1" class="btn abcd btn-primary profile-button"  runat="server"  Visible="True" OnClick="button1_Click"  >Apply</asp:LinkButton>
						</div>

					</div>
					
					

				</div>
			</div>
		</div>
	


	
<!--===============================================================================================-->	
	<script src="login/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="login/vendor/bootstrap/js/popper.js"></script>
	<script src="login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="login/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="login/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
        $('.js-tilt').tilt({
            scale: 1.1
        })
    </script>
<!--===============================================================================================-->
	<script src="login/js/main.js"></script>



</asp:Content>
