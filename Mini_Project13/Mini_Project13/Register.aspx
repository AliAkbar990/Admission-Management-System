<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Mini_Project13.Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>REGISTER PAGE</title>
    
    <link href="css/Register.css" rel="stylesheet" type="text/css" />
</head>
<body>  
    
    <form id="form1" runat="server">

    <div class="container">
           
           <%--<h1>REGISTRATION PAGE</h1>--%>
           <asp:Image ID="ImagimgUser" runat="server" src="Image/userImage.png" class="userImage"/>
           <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red"></asp:Label><br />
                  
           <asp:TextBox ID="txtUsername" runat="server" placeholder="Enter Your Username"></asp:TextBox><br />        
           <asp:RequiredFieldValidator class="validation" ID="rfv1" runat="server" ControlToValidate="txtUsername" ErrorMessage="*Username Must Be Required" ForeColor="Red"></asp:RequiredFieldValidator>          
      
            <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter Your Email"></asp:TextBox><br />         
            <asp:RegularExpressionValidator class="validation" ID="rev1" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Invalid Email" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" ForeColor="Red"></asp:RegularExpressionValidator>
    

           <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" placeholder="Enter Your Password"></asp:TextBox><br />
           <asp:RequiredFieldValidator class="validation" ID="rfv2" runat="server" ControlToValidate="txtPassword" ErrorMessage="*Password Must be Required" ForeColor="Red"></asp:RequiredFieldValidator>           
     
           <asp:TextBox ID="txtCpassword" TextMode="Password" runat="server" placeholder="Confirm Your Password"></asp:TextBox><br />
           <asp:CompareValidator class="validation" ID="cv1" runat="server" ControlToValidate="txtCpassword" ControlToCompare="txtPassword" ErrorMessage="*Password Must Be Same" ForeColor="Red"></asp:CompareValidator>         
     
           
           <asp:Button ID="btnInsert" runat="server" Text="Register" 
               onclick="btnInsert_Click" />

           <br />

           <asp:HyperLink ID="lnkLogin" runat="server" NavigateUrl="~/Login.aspx" Text="Already have an account? Login here"></asp:HyperLink>
      
    </div>
    </form>
</body>
</html>
