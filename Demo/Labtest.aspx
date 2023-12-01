<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Labtest.aspx.cs" Inherits="Demo.Labtest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .first{
            margin-top:100px;
            margin-bottom:50px;
        }
        td,th{
            text-align:center;
        }
        table{
            width:500px;
        }
        tr,td,th{
            border:2px solid black;
        }
        .second{
            margin-bottom:50px;
        }
    </style>
    <center><div class="first">
        <table class="tbl">
            <tr>
                <th colspan="2"><b>Telephone</b></th>
                <th ><b>Grade</b></th>
                <th ><b>Students</b></th>
            </tr>
            <tr>
                <td><b>1234</b></td>
                <td><b>2587</b></td>
                <td><b>A+</b></td>
                <td><b>Alex</b></td>
            </tr>
            <tr>
                <td rowspan="2"><b>MSE</b></td>
                <td rowspan="2" style="background-color:blue"><b>ME</b></td>
                <td><b>EDGE</b></td>
                <td rowspan="3"><b>EEE</b></td>
            </tr>
            <tr>
                <td><b>Flag</b></td>
            </tr>
            <tr>
                <td><b>A</b></td>
                <td><b>C</b></td>
                <td><b>G</b></td>
            </tr>
            <tr>
                <td><b>B</b></td>
                <td colspan="2" style="background-color:green"><b>CSE</b></td>
                <td><b>KUET</b></td>
            </tr>
        </table>
        
    </div>
  </center>
    <center>
        <div class="second">
            <div><h4>Input the details of first table</h4><br /></div>
            <div>
                <label >ID</label>
				<input  type="text" name="id" placeholder="ID">
				<label >NAME</label>
				<input  type="text" name="name" placeholder="Name">
                <label >dept</label>
				<input  type="text" name="dept" placeholder="Department">
			</div>
            <div >
			    <asp:LinkButton  ID="insrtbtn" runat="server"  Visible="True" OnClick="insrtbtn_Click">ADD</asp:LinkButton>
		    </div>
        </div>
        
    </center>
    <center>
        <div class="second">
            <div><h4>Input the details of second table</h4><br /></div>
            <div>
                <label >Salary_id</label>
				<input  type="text" name="id" placeholder="ID">
				<label >Amount</label>
				<input  type="text" name="name" placeholder="Name">
                <label >Students+id</label>
				<input  type="text" name="dept" placeholder="Department">
			</div>
            <div >
			    <asp:LinkButton  ID="insrtbtn2" runat="server"  Visible="True" OnClick="insrtbtn_Click">ADD</asp:LinkButton>
		    </div>
        </div>
        
    </center>
</asp:Content>
