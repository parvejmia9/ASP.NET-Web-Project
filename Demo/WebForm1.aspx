<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="student_management_system.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>
                    Student Management System
                </h1>
                <h2>asp.net C# project</h2>
                <hr />
                <div style="background-color:aquamarine;height:150px;width:250px;">
                <table border="1">
                    <tr>
                        <td>
                            Admin User Id
                        </td>
                        <td>
                            <asp:TextBox ID="TxtAdminId" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td>
                            <asp:TextBox ID="TxtPwdAdmin" runat="server" TextMode="Password"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="ButLogin" runat="server" Text="Login" /></td>
                        <td>
                            <asp:Label ID="Labmsg" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                </table>
                    </div>
            </center>
        </div>
    </form>
</body>
</html>