<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="learn.aspx.cs" Inherits="Demo.learn" %>
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
            margin-top:100px;
           
        }
        .sz {
            
            font-size: 24px;
            color:rgb(58 14 156);
            
        }
        szz{
            font-size:26px;
        }
        .hd{
            color:rgb(15 172 89);
        }
        /*li{
            margin-left:20px;
        }*/
        a{
            color:rgb(58 14 156);
            
        }
        a:hover{
            text-decoration:none;
            color:lightseagreen;
        }
        .scd{
            border-radius:15px;
            background: white;
            margin-bottom:45px;
        }
        body{
            background: rgb(99, 39, 120);
        }
    </style>
    <div class="first">
        <div class="row ">
            <div class=" scd mx-auto col-md-6">
                <center><h1 class="hd" >Learn something New</h1></center>
                <br />
                <br />
                <div  class="sz">
                    <center ><h2>Written Article</h2>
                        <br />
                    <ol >
                        <li  >
                            <a style="font-size:20px;" href="artcl1.aspx" target="_self">1. Time and Space Complexity</a>
                        </li>
                        <li>
                            <a style="font-size:20px;" href="artcl2.aspx" target="_self">2. Basics of Implementation</a>
                        </li>
                        <li>
                            <a style="font-size:20px;" href="https://cp-algorithms.com/algebra/binary-exp.html" target="_blank">3. Binary Exponentiation</a>
                        </li>
                        <li>
                            <a style="font-size:20px;" href="https://cp-algorithms.com/algebra/factoring-exp.html" target="_blank">4. Factoring Exponentiation</a>
                        </li>
                        <li>
                            <a style="font-size:20px;" href="https://cp-algorithms.com/algebra/euclid-algorithm.html" target="_blank">5. Euclidean algorithm for computing GCD</a>
                        </li>
                        <li>
                            <a style="font-size:20px;" href="https://cp-algorithms.com/algebra/extended-euclid-algorithm.html" target="_blank">6. Extended Euclidean Algorithm</a>
                        </li>
                        <li>
                            <a style="font-size:20px;" href="https://cp-algorithms.com/algebra/linear-diophantine-equation.html" target="_blank">7. Linear Diophantine Equations</a>
                        </li>
                        <li>
                            <a style="font-size:20px;" href="https://cp-algorithms.com/algebra/fibonacci-numbers.html" target="_blank">8. Fibonacci Numbers</a>
                        </li>
                        <li>
                            <a style="font-size:20px;" href="https://cp-algorithms.com/algebra/chinese-remainder-theorem.html" target="_blank">9. Chinese Remainder Theorem</a>
                        </li>
                        <li>
                            <a style="font-size:20px;" href="https://cp-algorithms.com/algebra/primitive-root.html" target="_blank">10. Primitive Root</a>
                        </li>
                                               
                    </ol>
                        </center>
                </div>
                <br />
                <div  class="sz">
                    <center class="szz"><h2>Video Tutorial</h2>
                        <br />
                    <ol>
                        <li>
                            <a style="font-size:20px;" href="https://www.youtube.com/watch?v=9TlHvipP5yA" target="_blank">1. Time and Space Complexity</a>
                        </li>
                        <li>
                            <a style="font-size:20px;" href="https://www.youtube.com/watch?v=YhQUmSEI3I0" target="_blank">2. Basics of Implementation</a>
                        </li>
                        <li>
                            <a style="font-size:20px;" href="https://www.youtube.com/watch?v=L-Wzglnm4dM" target="_blank">3. Binary Exponentiation</a>
                        </li>
                       
                        
                                               
                    </ol>
                        </center>
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
