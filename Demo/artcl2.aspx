﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="artcl2.aspx.cs" Inherits="Demo.artcl2" %>
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
        .hd{
            color:rgb(15 172 89);
        }
        .scd{
            border-radius:15px;
            background: white;
            margin-bottom:45px;
        }
        body{
            background: rgb(99, 39, 120);
        }
        
        .paragraph{
            margin-left:30px;
        }
    </style>
    <div class="first">
        <div class="row ">
            <div class=" scd mx-auto col-md-6">
                <center><h1 class="hd" >Basics of Implementation</h1></center>
                <br />
                <br />
                <p style="text-align:justify;" class="sz">
                    Questions that are based on ad-hoc ideas and brute-force solutions are usually classified under the implementation category. The objective of such questions is to help users to improve their ability of converting English statements into code implementation.
                    <br />
                    This tutorial discusses 2 kinds of problems that will help you get started with such questions.
                    <br />
                    <br />
                    <b>Question 1:</b> You are given two numbers <b><i>N</i></b> and <b><i>M</i></b> print the absolute difference between two numbers i.e.
                    <span class="MathJax_SVG" id="MathJax-Element-3-Frame" tabindex="0" data-mathml="<math xmlns=&quot;http://www.w3.org/1998/Math/MathML&quot;><mrow class=&quot;MJX-TeXAtom-ORD&quot;><mo stretchy=&quot;false&quot;>|</mo></mrow><mi>N</mi><mo>&amp;#x2212;</mo><mi>M</mi><mrow class=&quot;MJX-TeXAtom-ORD&quot;><mo stretchy=&quot;false&quot;>|</mo></mrow></math>" role="presentation" style="font-size: 100%; display: inline-block; position: relative;"><svg xmlns:xlink="http://www.w3.org/1999/xlink" width="8.64ex" height="2.809ex" viewBox="0 -863.1 3719.9 1209.6" role="img" focusable="false" style="vertical-align: -0.805ex;" aria-hidden="true"><defs><path stroke-width="1" id="E3-MJMAIN-7C" d="M139 -249H137Q125 -249 119 -235V251L120 737Q130 750 139 750Q152 750 159 735V-235Q151 -249 141 -249H139Z"></path><path stroke-width="1" id="E3-MJMATHI-4E" d="M234 637Q231 637 226 637Q201 637 196 638T191 649Q191 676 202 682Q204 683 299 683Q376 683 387 683T401 677Q612 181 616 168L670 381Q723 592 723 606Q723 633 659 637Q635 637 635 648Q635 650 637 660Q641 676 643 679T653 683Q656 683 684 682T767 680Q817 680 843 681T873 682Q888 682 888 672Q888 650 880 642Q878 637 858 637Q787 633 769 597L620 7Q618 0 599 0Q585 0 582 2Q579 5 453 305L326 604L261 344Q196 88 196 79Q201 46 268 46H278Q284 41 284 38T282 19Q278 6 272 0H259Q228 2 151 2Q123 2 100 2T63 2T46 1Q31 1 31 10Q31 14 34 26T39 40Q41 46 62 46Q130 49 150 85Q154 91 221 362L289 634Q287 635 234 637Z"></path><path stroke-width="1" id="E3-MJMAIN-2212" d="M84 237T84 250T98 270H679Q694 262 694 250T679 230H98Q84 237 84 250Z"></path><path stroke-width="1" id="E3-MJMATHI-4D" d="M289 629Q289 635 232 637Q208 637 201 638T194 648Q194 649 196 659Q197 662 198 666T199 671T201 676T203 679T207 681T212 683T220 683T232 684Q238 684 262 684T307 683Q386 683 398 683T414 678Q415 674 451 396L487 117L510 154Q534 190 574 254T662 394Q837 673 839 675Q840 676 842 678T846 681L852 683H948Q965 683 988 683T1017 684Q1051 684 1051 673Q1051 668 1048 656T1045 643Q1041 637 1008 637Q968 636 957 634T939 623Q936 618 867 340T797 59Q797 55 798 54T805 50T822 48T855 46H886Q892 37 892 35Q892 19 885 5Q880 0 869 0Q864 0 828 1T736 2Q675 2 644 2T609 1Q592 1 592 11Q592 13 594 25Q598 41 602 43T625 46Q652 46 685 49Q699 52 704 61Q706 65 742 207T813 490T848 631L654 322Q458 10 453 5Q451 4 449 3Q444 0 433 0Q418 0 415 7Q413 11 374 317L335 624L267 354Q200 88 200 79Q206 46 272 46H282Q288 41 289 37T286 19Q282 3 278 1Q274 0 267 0Q265 0 255 0T221 1T157 2Q127 2 95 1T58 0Q43 0 39 2T35 11Q35 13 38 25T43 40Q45 46 65 46Q135 46 154 86Q158 92 223 354T289 629Z"></path></defs><g stroke="currentColor" fill="currentColor" stroke-width="0" transform="matrix(1 0 0 -1 0 0)"><use xlink:href="#E3-MJMAIN-7C" x="0" y="0"></use><use xlink:href="#E3-MJMATHI-4E" x="278" y="0"></use><use xlink:href="#E3-MJMAIN-2212" x="1389" y="0"></use><use xlink:href="#E3-MJMATHI-4D" x="2389" y="0"></use><use xlink:href="#E3-MJMAIN-7C" x="3441" y="0"></use></g></svg><span class="MJX_Assistive_MathML" role="presentation"><math xmlns="http://www.w3.org/1998/Math/MathML"><mrow class="MJX-TeXAtom-ORD"><mo stretchy="false"></mo></mrow><mi></mi><mo></mo><mi></mi><mrow class="MJX-TeXAtom-ORD"><mo stretchy="false"></mo></mrow></math></span></span>
                    <br />
                </p>
                <br />
                <p style="text-align:justify;" class="sz">
                    <b>Approach:</b>
                    <br />
                    

                </p>
                <div style="text-align:justify;" class="sz paragraph" >
                    <ul >
                        <li>
                            &bull; Store the difference of <b><i>N</i></b> and <b><i>M</i></b> in a temporary variable result.
                        </li>
                        <li>&bull; Check if the value of result is negative.</li>
                        <li>&bull; The question is to print the absolute difference. Therefore, if the value is negative, then make it positive by multiplying it with <b>-1 .</b></li>
                        <li>&bull; Print out the value of result.</li>
                    </ul>
                </div>
                
            </div>
             
        </div>
        
    </div>
</asp:Content>
