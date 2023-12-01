<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="pracorlearn.aspx.cs" Inherits="Demo.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/customstylesheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
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
    <style type="text/css">
        .xyz .top {
        display: none;
        
    }
        .xyz:hover .back{
            display: none;
        }
      .xyz:hover .top {
        display: inline;
    }
.bb {
    border-radius:25px;
    background-color: #242d3c;
    display: block;
   /* margin-left: 70px;*/
    margin-bottom: 15px; /* SIMPLY SET THIS PROPERTY AS MUCH AS YOU WANT. This changes the space below box1 */
    text-align: justify;
}
 .cc{
    border-radius:25px;
    background-color: #242d3c;
    /*margin-left:20px;
    margin-right:40px;*/
    display: block;
    margin-bottom: 15px; /* SIMPLY SET THIS PROPERTY AS MUCH AS YOU WANT. This changes the space below box1 */
    text-align: justify;
}
 .abc{
    border-radius:25px;
    margin-top:90px;
    margin-bottom:20px;
   background-color: #242d3c;
    
    text-align: justify;
}
 .scd{
     margin-top:20px;
 }
 .fcd{
     margin-top:15px;
 }
 /*.containerm{
     background: #3c4c66;*/
  /*background: -webkit-linear-gradient(-135deg, #c850c0, #4158d0);
  background: -o-linear-gradient(-135deg, #c850c0, #4158d0);
  background: -moz-linear-gradient(-135deg, #c850c0, #4158d0);
  background: linear-gradient(-135deg, #c850c0, #4158d0);*/
 /*}*/

#bg {
    z-index:-1;
  position: fixed; 
  top: 0; 
  left: 0; 

  /* Preserve aspet ratio */
  min-width: 100%;
  min-height: 100%;
}
body{
            background: rgb(140 11 201);
        }
      
  </style>
</head>
    <section class="containerm">
      <div class="container" >
         <div class="row fcd">
            <div class="mx-auto col-10 abc" >
               <center>
                  <h2 style="color:#999999;">Welcome</h2>
                  <p align="center" style="color:#999999;font-size:20px;"><b>Welcome to the new AlgoPlus website.This new version contains  modern UI.
As this time we have completely written the site from scratch, there can be a few bugs.Also, it is a great opportunity to add new features. Feel free to raise issues on our Github tracking repository if you see any bug or if you want to have some feature on this new AlgoPlus.

Some features - (Ranking, Problem Locking, Learning Section, Tutorial, etc) are still in development and will be
                      live after some update.</p>
               </center>
            </div>
         </div>
         <div class="row scd">
            <div class="mx-auto col-md-5 bb ">
               <center  class="xyz">
                  <a target="_self" href="problems.aspx" target="_blank">
                        <img class="back" width="150px" src="imgs/Images/probsolve.png"/>
                        <img class="top" width="150px" src="imgs/Images/probsolvecolor.png"/>
                      
                  </a>
                </center>
                <center>
                  <h4 style="color:#a2a5b9;">Practice Problems</h4>
                  <p style="color:#a2a5b9;font-size:20px;" class="text-center">Solve various algorithmic problems of different OJs.

                     Problems are categorized by their difficulty and type.

                  </p>
               </center>
            </div>
            <div class="mx-auto col-md-5 cc">
                <center  class="xyz">
                  <a target="_self" href="learn.aspx" target="_blank">
                        <img class="back" width="150px" src="imgs/Images/learnBW.png"/>
                        <img class="top" width="150px" src="imgs/Images/learncolor.png"/>
                  </a>
                </center>
               <center>
                  <h4 style="color:#a2a5b9;">Learn</h4>
                  <p style="color:#a2a5b9;font-size:20px;" class="text-center">We have a huge collection of article on datastructers and algorithms. This article are written by some genius people with extraordinary mind.</p>
               </center>
            </div>
            
         </div>
      </div>
   </section>
    <div >
        
        
        
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
