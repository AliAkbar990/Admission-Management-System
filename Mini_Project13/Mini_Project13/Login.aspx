<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Mini_Project13.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <link href="css/Login.css" rel="Stylesheet" type="text/css" />
    <style type="text/css">
        .userImage
        {
            height:180px;
            }
    </style>

</head>
<body>
    <%--<h3>USER LOGIN</h3>--%>
    <%--<h2>USER LOGIN PAGE</h2>--%>
    <form id="form1" runat="server">    
    
    <div class="divdes">   
           <%--<a href="Home.aspx">Home</a>--%>
           <asp:Label ID="lblresult" runat="server" Text="" ForeColor="Red"></asp:Label><br />
           
           <asp:Image ID="ImagimgUser" runat="server" src="Image/userImage.png" class="userImage"/>

           <br /><br />
            
            <%--<asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>--%>
            <asp:TextBox ID="txtUsername" runat="server" placeholder="Enter Your Username"></asp:TextBox><br />

            <%--<asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>--%>
            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" placeholder="Enter Your Password"></asp:TextBox><br />

            <asp:Button ID="btnLogin" runat="server" Text="Login" 
               onclick="btnLogin_Click" />

            <br />

        <asp:HyperLink ID="lnkRegister" runat="server" NavigateUrl="~/Register.aspx" Text="Don't have an account? Please Register here"></asp:HyperLink>

    </div>
    </form>
</body>
</html>
