<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrintData.aspx.cs" Inherits="Mini_Project13.DisplayData" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title></title>
   

    <style type="text/css">
        @media print {
            .print-button {
                display: none;
            }
        }
    
         table
          {
            width: 50%;
            border-collapse: collapse;
            margin-bottom: 20px;
            
          }
          
          th, td 
          {
            border: 1px solid Black;
            padding: 10px;
            text-align: left;
          }
          
          th
          {
            background-color: #f2f2f2;
          }
          
          button 
          {
            margin-top: 20px;
          }
    
    </style>

    
 <script type="text/javascript">
//     window.onload(window.print());

     function handleprint() {
         window.print()
     }
    </script>

    
    
</head>
<body>
    <form id="form1" runat="server">
    <div id="tableContainer" class="container" runat="server">
    <center>
    <table>
        <tr>
           <th>Student Occupation</th>
           <th>Student Data</th>
        </tr>
        <tr>
             <td>FirstName</td>
             <td><asp:Label ID="lblfname" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
             <td>LastName</td>
             <td><asp:Label ID="lbllname" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
             <td>Email</td>
             <td><asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
             <td>PhoneNo</td>
             <td><asp:Label ID="lblPhone" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
             <td>Address</td>
             <td><asp:Label ID="lblAddress" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
             <td>Nationality</td>
             <td><asp:Label ID="lblNationality" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
             <td>Gender</td>
             <td><asp:Label ID="lblGender" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
             <td>BirthDate</td>
             <td><asp:Label ID="lblBirthDate" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
             <td>Last School Name</td>
             <td><asp:Label ID="lblLastSchoolName" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
             <td>10th Marksheet Grade</td>
             <td><asp:Label ID="lbl10thMarksheetGrade" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
             <td>12th Marksheet Grade</td>
             <td><asp:Label ID="lbl12thMarksheetGrade" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
             <td>Degree</td>
             <td><asp:Label ID="lblDegree" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
             <td>Pincodeno</td>
             <td><asp:Label ID="lblPincodeno" runat="server" Text="Label"></asp:Label></td>
        </tr>
    </table>


          <br /><br />

      <div class="print-button">
          <button type="button" onclick="handleprint()">Print</button>
      </div>

      </center>

    </div>
    </form>
   
</body>
</html>
