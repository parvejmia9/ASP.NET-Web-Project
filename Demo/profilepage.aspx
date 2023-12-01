<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="profilepage.aspx.cs" Inherits="Demo.profilepage" %>
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
    <link href="profilepage/css/bootstrap.min.css" rel="stylesheet" />
    <script src="profilepage/js/bootstrap.bundle.min.js"></script>
    <script src="profilepage/js/jquery.min.js"></script>
 <style>
        body {
    background: rgb(99, 39, 120)
}
.first{
    margin-top:100px;
}
.form-control:focus {
    box-shadow: 1px 1px 1px 2px  #682773;
    border-color: #682773;
}

.profile-button {
    background: rgb(99, 39, 120);
    box-shadow: none;
    border: none
}

.profile-button:hover {
    background: #682773
}

.profile-button:focus {
    background: #682773;
    box-shadow: none
}

.profile-button:active {
    background: #682773;
    box-shadow: none
}

.back:hover {
    color: #682773;
    cursor: pointer
}

.labels {
    font-size: 16px
}

.add-experience:hover {
    background: #BA68C8;
    color: #fff;
    cursor: pointer;
    border: solid 1px #BA68C8
}
#GridView1
{
text-decoration: none;
DISPLAY: block;
background-color:black;
}
.hid{
    border-width: 5px;
    border-color:red;
}
</style>

        <div class=" container rounded bg-white mt-5 mb-5 ">
    <div class="row first">
        <div class="col-md-2 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                <img class="rounded-circle mt-5" width="150px" src="imgs/Images/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg" />
                <asp:label runat="server" ID="l_fullname" class="font-weight-bold">Edogaru</asp:label>
                <asp:label runat="server" ID="l_usename" class="text-black-50">edogaru@mail.com.my</asp:label>

            </div>
        </div>
        <div class=" col-md-4 border-right">
            <div class="validate-form p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">Profile Settings</h4>
                </div>
                <div class="row mt-2">
                    <div class="col-md-6 validate-input" data-validate = "Enter First Name">
                        <label class="labels">Name</label>
                        <asp:Textbox id="fname" runat="server" type="text" name="fname" class="form-control" placeholder="First Name" ></asp:Textbox>

                    </div>
                    <div class="col-md-6 validate-input" data-validate = "Enter Last Name">
                        <label class="labels">Name</label>
                        <asp:Textbox id="lname" runat="server" type="text" name="lname" class="form-control"  placeholder="Last Name" ></asp:Textbox>

                    </div>
                </div>
                <div class="  mx auto row mt-3">
                    <div class=" wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<asp:Textbox  runat="server" id="email" class ="form-control" type="text" name="email" placeholder="Email"></asp:Textbox>
						<span class="focus-input100"></span>
					</div>
                </div>
                <div class=" mx auto row mt-3">
                    <div class="col-md-12 validate-inputt" data-validate = "Password Required">
                        <label class="labels">Old Password</label>
                        <asp:Textbox runat="server" id="oldpass" name="oldpass" type="text" class="form-control" placeholder="Enter old password" value=""></asp:Textbox>
                    </div>
                </div>

                <div class=" row mt-2">
                    <div class="col-md-6 validate-inputt" data-validate = "Password Required">
                        <label class="labels">New Password</label>
                        <asp:Textbox runat="server" ID="newpass" name="newpass" class="form-control" placeholder="New Password" value=""></asp:Textbox>

                    </div>
                    <div class="col-md-6 validate-inputt" data-validate = "Password Didn't Match">
                        <label class="labels">Confirm New Password</label>
                        <asp:Textbox runat="server" id="conpass" name="conpass" class="form-control" placeholder="Confirm Password" value=""></asp:Textbox>

                    </div>
                </div>

                <div class="mt-5 text-center ">
                    
                    <asp:LinkButton class="btn abcd btn-primary profile-button"  runat="server"  Visible="True" OnClick="Unnamed1_Click">Save Profile</asp:LinkButton>
                </div>

            </div>
        </div>
        <div class="col-md-6">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center experience">
                    <span><b>Your Problems</b></span>
                    <asp:LinkButton  runat="server" ID="add_article" class=" nav-link border px-3 p-1 add-experience" OnClick="add_article_Click">
                        <i class="fa fa-plus"></i>
                        &nbsp;New Problem</asp:LinkButton>
                </div>
                <br>
                
            </div>
            <div class="row">
                  <div class="col">
                       <asp:GridView style="text-decoration:none;" class="table table-striped table-bordered" ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound"></asp:GridView>
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
    <script src="profilepage/js/main.js"></script>
</asp:Content>
