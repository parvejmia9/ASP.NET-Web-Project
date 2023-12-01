<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="manageuser.aspx.cs" Inherits="Demo.manageuser" %>
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
        body {
    background: rgb(99, 39, 120)
}
.first{
    margin-top:120px;
    margin-bottom:250px;
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
.card{
    border-radius:25px;
    
}
        .GridHeader {
            /*text-align: center !important;*/
        }  

</style>
    <div class="first container">
        <div class="row">
            <div class="col-md-5">

                <div class="card">
                    <div class="validate-form card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>User Manage</h4>
                                    <br />
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                        <img width="100px" src="imgs/writer.png" />
                                       
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class=" mx-auto row mt-3">
                            <div class=" mx-auto wrap-input100 validate-input" data-validate = "Enter an UserName">
						        <asp:Textbox  runat="server" id="username" class ="form-control" type="text" name="username" placeholder="Username"></asp:Textbox>
						        <span class="focus-input100"></span>
					        </div>
                        </div>

                        <div class="validate-form row mt-3">
                            <div class="mx-auto col-4">
                                <asp:Button ID="Button1" class="btn abcd btn-block btn-danger" runat="server" Text="Remove" OnClick="Button4_Click" />
                            </div>
                        </div>


                    </div>
                </div>
            </div>
            <div class="col-md-7">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Users</h4>
                                    </center>
                            </div>
                        </div>

                       

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:algoplusConnectionString %>" SelectCommand="SELECT * FROM [user_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="user_id" HeaderText="User ID" ReadOnly="True" SortExpression="user_id" />
                                        <asp:BoundField HeaderStyle-CssClass="GridHeader" DataField="user_email" HeaderText="Email" SortExpression="user_email" />
                                        <asp:BoundField DataField="user_fname" HeaderText="Name" SortExpression="user_fname" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>


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
