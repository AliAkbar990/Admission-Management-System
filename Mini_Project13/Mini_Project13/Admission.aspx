<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admission.aspx.cs" Inherits="Mini_Project13.Admission" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ADMISSION FORM</title>
    
     <link href="css/Admission.css" rel="Stylesheet" type="text/css" />

</head>
<body>
 
             <%--background-image: url('Image/Bca.jpg'); 
             background-size: 1300px 1400px;--%>

         <%--<div id="header">
           <div id="nav">
               <a href="Home.aspx">Home</a>
               <a href="Register.aspx">Register</a>
               <a href="Login.aspx">Login</a>
               <a href="Admission.aspx">Admission</a>
           </div>
         </div>--%>
          <a href="Home.aspx">Home</a>
          <asp:Label ID="lblresult" runat="server" Text="" ForeColor="Red" Font-Size="X-Large"></asp:Label><br />

         <h1>ADMISSION FORM</h1>


    <form id="form1" runat="server">

    <div>
         <h2> PERSONAL DETAIL </h2>
            
        <label>First Name</label>      
        <asp:TextBox class="input1" ID="txtfname" runat="server" placeholder="Enter Your FirstName"></asp:TextBox><br />
        <%--<asp:RequiredFieldValidator class="validation" ID="rfv1" runat="server" ControlToValidate="txtfname" ErrorMessage="*Firstname Must Be Required" ForeColor="Red"></asp:RequiredFieldValidator>          --%>

        <label>Last Name</label>
        <asp:TextBox class="input1" ID="txtlname" runat="server" placeholder="Enter Your LastName"></asp:TextBox><br />
                            
        <label>Email</label>
        <asp:TextBox class="input1" ID="txtemail" runat="server" placeholder="Enter Your Email"></asp:TextBox><br />

        <label>Phone No</label>
        <asp:TextBox class="input1" ID="txtphoneno" runat="server" placeholder="Enter Your Phone No"></asp:TextBox><br />

        <label>Address</label>
        <asp:TextBox class="input1" ID="txtaddress" runat="server" placeholder="Enter Your Address"></asp:TextBox><br />

        <label>Nationality</label>
        <asp:TextBox class="input1" ID="txtnationality" runat="server" placeholder="Your Nationality"></asp:TextBox><br />

        <label class="label">Gender</label><label class="label">Birth Date</label><br />
        <asp:RadioButton ID="Male" runat="server" Text="Male" GroupName="Gender" />
        <asp:RadioButton ID="Female" runat="server" Text="Female" GroupName="Gender" />
        <asp:TextBox class="input1a" ID="txtdob" runat="server" TextMode="Date"></asp:TextBox>

        <h2> EDUCATION DETAIL </h2>

        <label>Last School Name</label>
        <asp:TextBox class="input2" ID="txtschoolname" runat="server" placeholder="Enter Your Last School Name"></asp:TextBox><br />

        
        <label>10th Marksheet Grade</label>
        <asp:TextBox class="input2" ID="txt10th" runat="server" placeholder="Enter Your Marksheet"></asp:TextBox><br />

        <label>12th Marksheet Grade</label>
        <asp:TextBox class="input2" ID="txt12th" runat="server" placeholder="Enter Your Marksheet"></asp:TextBox><br />
     
        
        <label>Degree</label>
        <asp:DropDownList class="input2" ID="ddldegree" runat="server" placeholder="-----Select Your Degree-----">
            <asp:ListItem>BCA</asp:ListItem>
            <asp:ListItem>BSC</asp:ListItem>
            <asp:ListItem>BA</asp:ListItem>
            <asp:ListItem>BCOM</asp:ListItem>
            <asp:ListItem>BBA</asp:ListItem>
            <asp:ListItem>MCA</asp:ListItem>           
        </asp:DropDownList><br />

        <label>Pincode No</label>
        <asp:TextBox class="input2" ID="txtpincodeno" runat="server" placeholder="Enter Your PincodeNo"></asp:TextBox><br />
       
        <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
             onclick="btnsubmit_Click" />

    </div>  
    </form>
</body>
</html> 
