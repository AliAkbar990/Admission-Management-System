<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="display.aspx.cs" Inherits="Mini_Project13.display" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        h1
        {
            text-align: center;
            color: #ff6600;
            background-color: rgba(224, 224, 224, 0.8);
            margin: 0;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        }
        
        h1
        {
            font-size: 2.5em;
        }
        .center
        {
            text-align:center;
        }
        #txtfname
        {
            width: 15%;
            height:43px;
            padding: 15px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        #btnSearch
        {
             width: 9%;
             height:43px;
             font-size: 20px;
             padding: 25px;
             background-color:#50B8E2;
             color: white;
             border: none;
             border-radius: 5px;
             cursor: pointer; 
        }
        
       #btnSearch:hover
        {
            background-color: #239ED0;            

        }
        #btnSearch 
        {
                font-size: 19px;
                padding: 10px;
        }
    
         #btnLogout
         {
             width: 10%;
             font-size: 20px;
             padding: 25px;
             background-color: #4CAF50;
             color: white;
             border: none;
             border-radius: 5px;
             cursor: pointer;    
         }
          #btnLogout:hover
        {
            background-color: Red;            

        }
        #btnLogout 
        {
                font-size: 19px;
                padding: 10px;
        }
        .EditButton 
        {
            background-color: #4CAF50; /* Green */
            color: white;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
        .DeleteButton
        {
            background-color: #f44336; /* Red */
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    
    </style>
     

</head>
<body>
    <form id="form1" runat="server">
    <div>

         <h1>Admin Dashboard</h1>

        <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
    
        <asp:Button ID="btnSearch" runat="server" Text="Search" 
             onclick="btnSearch_Click" />
             
    
        <br /><br />
    
        <asp:GridView ID="gvStudent" runat="server" AutoGenerateColumns="false"
        DataKeyNames="formid" onrowcancelingedit="gvStudent_RowCancelingEdit" 
            onrowediting="gvStudent_RowEditing" onrowupdating="gvStudent_RowUpdating" 
            onrowdeleting="gvStudent_RowDeleting">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowEditButton="True" ControlStyle-CssClass="EditButton" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ControlStyle-CssClass="DeleteButton" />

                 <asp:TemplateField HeaderText="fname" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblfname" runat="server" Text='<%# Eval("fname") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtfname" runat="server" Text='<%# Eval("fname") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="lname" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lbllname" runat="server" Text='<%# Eval("lname") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtlname" runat="server" Text='<%# Eval("lname") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="email" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblemail" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtemail" runat="server" Text='<%# Eval("email") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="phoneno" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblphoneno" runat="server" Text='<%# Eval("phoneno") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtphoneno" runat="server" Text='<%# Eval("phoneno") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="address" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lbladdress" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtaddress" runat="server" Text='<%# Eval("address") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="nationality" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblnationality" runat="server" Text='<%# Eval("nationality") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtnationality" runat="server" Text='<%# Eval("nationality") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="gender" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblgender" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtgender" runat="server" Text='<%# Eval("gender") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="dob" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lbldob" runat="server" Text='<%# Eval("dob") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtdob" runat="server" Text='<%# Eval("dob") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Lastschoolname" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblLastschoolname" runat="server" Text='<%# Eval("Lastschoolname") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtLastschoolname" runat="server" Text='<%# Eval("Lastschoolname") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="10th" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lbl10th" runat="server" Text='<%# Eval("10th") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt10th" runat="server" Text='<%# Eval("10th") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="12th" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lbl12th" runat="server" Text='<%# Eval("12th") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt12th" runat="server" Text='<%# Eval("12th") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="degree" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lbldegree" runat="server" Text='<%# Eval("degree") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtdegree" runat="server" Text='<%# Eval("degree") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="pincodeno" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblpincodeno" runat="server" Text='<%# Eval("pincodeno") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtpincodeno" runat="server" Text='<%# Eval("pincodeno") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>     

        <br /><br />

        <div class="center">
            <asp:Button ID="btnLogout" runat="server" Text="Logout" 
            onclick="btnLogout_Click" />
        </div>

    </div>
    </form>
</body>
</html>
