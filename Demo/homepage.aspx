<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="Demo.WebForm3" %>
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
        <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Mobile Metas -->
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <!-- Site Metas -->
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="author" content="" />


    <!-- slider stylesheet -->
    <link
      rel="stylesheet"
      type="text/css"
      
      href="CSS/news.css"
    />

    <!-- bootstrap core css -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

    <!-- fonts style -->
    <link
      href="https://fonts.googleapis.com/css?family=Poppins|Raleway:400,600|Righteous&display=swap"
      rel="stylesheet"
    />
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet" />
    <!-- responsive style -->
    <link href="css/responsive.css" rel="stylesheet" />
    <style type="text/css">
      .first{
          margin-top:30px;
      } 
      .imgg{
          border-radius:20px;
          margin-bottom:30px;
      }
      .cng{
          border-radius:20px;
          height:500px;
      }
  </style>
  <div class="hero_area">
      <!-- header section strats -->
      <!-- end header section -->
      <!-- slider section -->
      <section class=" slider_section position-relative first">
        <div class="container">
          <div
            id="carouselExampleControls"
            class="carousel slide"
            data-ride="carousel"
              data-interval="2500"
          >
            <div class="carousel-inner">
              <div class="carousel-item active">
                <div class="slider_item-box">
                  <div class="slider_item-container">
                    <div class="slider_item-detail">
                      <h1>
                        Welcome To AlgoPlus
                      </h1>
                      
                    </div>
                    <div  class=" imgg slider_item-imgbox">
                        <img class="cng" src="homeimg/Banner-Blog-1A-1.jpg" />
                    </div>
                  </div>
                </div>
              </div>
              <div class="carousel-item">
                <div class="slider_item-box">
                  <div class="slider_item-container">
                    <div class="slider_item-detail">
                      <h1>
                        Learn Datastruces and Algorithm
                      </h1>
                      
                    </div>
                    <div class=" imgg slider_item-imgbox">
                        <img class="cng" src="homeimg/Competitive-Programming-1.jpg" />
                      
                    </div>
                  </div>
                </div>
              </div>
              <div class="carousel-item">
                <div class="slider_item-box">
                  <div class="slider_item-container">
                    <div class="slider_item-detail">
                      <h1>
                        After Learning, Code!
                      </h1>
                      
                      
                    </div>
                    <div class=" imgg slider_item-imgbox">
                        <img class="cng" src="homeimg/eat%20sleep%20code%20repeat.jpg" />
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <a
          class="carousel-control-prev"
          href="#carouselExampleControls"
          role="button"
          data-slide="prev"
        >
          <span class="sr-only">Previous</span>
        </a>
        <a
          class="carousel-control-next"
          href="#carouselExampleControls"
          role="button"
          data-slide="next"
        >
          <span class="sr-only">Next</span>
        </a>
      </section>
      <!-- end slider section -->
    </div>
    <section class="about_section layout_padding">
      <div class="container">
        <h1 >
          About AlgoPlus
        </h1>
      </div>

      <div class="container">
        <div class="about_card-container layout_padding2-top">
          <div class="about_card">
            <div class="about-detail">
              <div class="about_img-container">
                <div class="about_img-box">
                    <img src="images/work3.png" alt="" />
                  
                </div>
              </div>
              <div class="card_detail-ox">
                <h4>
                  EASY TO USE
                </h4>
                <p>
                  AlgoPlus is a dynamic, fully responsive and user friendly website.
                  It has some basic feautres to help you learn and practice datastructes and algorithm
                  in a very easy and effective way.
                  
                </p>
              </div>
            </div>
          </div>
          <div class="about_card">
            <div class="about-detail">
              <div class="about_img-container">
                <div class="about_img-box">
                  <img src="images/work2.png" alt="" />
                </div>
              </div>
              <div class="card_detail-ox">
                <h4>
                  LEARN DATASTRUCTURES & ALGORITHMS 
                </h4>
                <p>
                  We have a huge collection of article on datastructers and algorithms.
                  This article are written by some genius people with extraordinary mind.
                  
                </p>
              </div>
            </div>
          </div>
          <div class="about_card">
            <div class="about-detail">
              <div class="about_img-container">
                <div class="about_img-box">
                  <img src="images/work1.png" alt="" />
                </div>
              </div>
              <div class="card_detail-ox">
                <h4>
                  PRACTICE LADDER
                </h4>
                <p>
                  Practice some choosen problems from Codeforces.
                  They are catagorized by their diffuculty and their type.
                  We have some problems on each difficulty ladder.
                  
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

</asp:Content>
