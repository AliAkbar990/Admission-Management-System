<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Mini_Project13.Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Navbar</title>   
    <style type="text/css">
        
        body
        {
            margin:0;
            font-family:Arial, Sans-Serif;  
            background-color:Gray;
        }
        
        #header
        {
            background-color: gray;
            overflow:hidden;    
            position:relative;
            border-radius:5px;
        }
     
        #nav
        {
            float:right;
            position:relative;
            top:9px;
            border-radius:5px;
        }
        
        #nav a
        {
            float:left;
            display:block;
            color:White;
            padding:14px 14px;
            text-decoration: none;
            height: 40px;
            width: 120px;
            border-radius:5px;
        }
        
        #nav a:hover
        {
            color: yellow;
            text-decoration:underline;
        }
        
        
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
      <div id="header">
       <div id="nav">
           <a href="Home.aspx">Home</a>
           <a href="Register.aspx">Register</a>
           <a href="Login.aspx">Login</a>    
           <a href="AdminLogin.aspx">Admin</a>      
           <%--<a href="Admission.aspx">Admission</a>--%>
           
       </div>
      </div>    
            
         <div id="content">

            <img src="image/bca133.jpeg" alt="bca admission open" style="width: 100%" />

         </div>
    </form>
</body>
</html>
