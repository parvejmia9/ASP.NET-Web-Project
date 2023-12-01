<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="Demo.usersignup" %>
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
    <script src="profilepage/js/main.js"></script>
<!--===============================================================================================-->
		<style>
			.first{
				margin-top:77px;
			}
			/*.CA{
				margin-top:20px;
			}
			.ML{
				margin-top:30px;
			}*/
			.login100-pic{
				margin-top:100px;
			}
			/*#fname{
				float:left;
			}
			#lname{
				float: right;
			}*/
/*			div.names span{
    display: inline-block;
}*/
		</style>

	<script type="text/javascript">
        function Validate() {
            var password = document.getElementById("txtPassword").value;
            var confirmPassword = document.getElementById("txtConfirmPassword").value;
            if (password != confirmPassword) {
                alert("Passwords do not match.");
                return false;
            }
            return true;
        }
    </script>


	<div class="limiter first">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="mx-auto login100-pic js-tilt" data-tilt>
					<img   src="login/images/img-01.png" alt="IMG" >
				
				</div>
		    <div class="login100-form validate-form">
					<span class="ML login100-form-title">
						User SignUp
					</span>
							 <div  class=" wrap-input100 validate-input" data-validate = "First Name can not be empty">
								<input  class="input100" type="text" name="fname" placeholder="First Name">
								<span  class="focus-input100"></span>
								<span class="symbol-input100">
									<i class="fa fa-address-book" aria-hidden="true"></i>
								</span>
							 </div>
							 <div  class=" wrap-input100 validate-input" data-validate = "Last Name can not be empty">
								<input class="input100" type="text" name="lname" placeholder="Last Name">
								<span class="focus-input100"></span>
								<span class="symbol-input100">
									<i class="fa fa-address-book" aria-hidden="true"></i>
								</span>
							</div>
						
				         <div class=" wrap-input100 validate-input" data-validate = "Give an username">
								<input  class="uname input100" type="text" name="username" placeholder="UserName">
								<span class="focus-input100"></span>
								<span class="symbol-input100">
									<i class="fa fa-user" aria-hidden="true"></i>
								</span>
						</div>
					<div class=" wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input  class =" input100" type="text" name="email" placeholder="Email">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>
				

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input  class=" input100"  type="password" name="pass" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
				    <div class="wrap-input100 validate-input" data-validate = "Password didn't match">
						<input  class="pass input100"  type="password" name="conpass" placeholder="Confirm Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
						<span style="text-align:center" id="error"></span>
					</div>
					
					<div class="container-login100-form-btn">
						<asp:LinkButton class="nav-link abcd login100-form-btn" ID="loginbtn" runat="server"  Visible="True" OnClientClick="Validate();" OnClick="loginbtn_Click">Register</asp:LinkButton>
					</div>
					<div class="mx-auto CA">
						<a class=" txt2" href="login.aspx">
							Already Have and account? Login
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
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
