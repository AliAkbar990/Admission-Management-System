<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Mini_Project13.AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="css/Adminlogin.css" rel="Stylesheet" type="text/css" />
    <style type="text/css">
        .AdminImage
        {
            height:200px;
            width:200px;
        }
    </style>
</head>
<body>
    <h3>Admin Login</h3>

    <form id="form1" runat="server">
    <div class="divdes">   
           <%--<a href="Home.aspx">Home</a>--%>
           
           
           <asp:Image ID="ImagimgAdmin" runat="server" src="Image/AdminImage.png" class="AdminImage"/>

           <br /><br />
            
            <%--<asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>--%>
             <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter Your Email"></asp:TextBox><br />         
             <%--<asp:RegularExpressionValidator runat="server" ControlToValidate="txtEmail" ErrorMessage="*Invalid Email" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" ForeColor="Red"></asp:RegularExpressionValidator>--%>

            <%--<asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>--%>
            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" placeholder="Enter Your Password"></asp:TextBox><br />
            <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" ErrorMessage="*Password Must be Required" ForeColor="Red"></asp:RequiredFieldValidator>           --%>
            <asp:Label ID="lblresult" runat="server" Text="" ForeColor="Red"></asp:Label><br />

            <asp:Button ID="btnAdmin_Login" runat="server" Text="AdminLogin" 
               onclick="btnAdmin_Login_Click" />

            <br />

    </div>
    </form>
</body>
</html>
