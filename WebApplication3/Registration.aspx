<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApplication3.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <style type="text/css">
        .auto-style1 {
            color: #003300;
        }
        .auto-style3 {
            width: 943px;
        }
     .auto-style4 {
         width: 694px;
     }
    </style>
</head>
<body style="background-color: #99FF66">
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style1" style="text-decoration: underline; text-align: center">Registration</h1>
            <br />
            <table border="1" align="center" class="auto-style3">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextUserName" runat="server" OnTextChanged="TextUserName_TextChanged1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" Username cannot be blank" ControlToValidate="TextUserName" ForeColor="Red" ></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Password cannot be blank" ControlToValidate="TextPassword" ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>
                </tr>

                 <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Retype Password"></asp:Label></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextRepass" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextPassword" ControlToValidate="TextRepass" ErrorMessage="Password and Confirm Password must be same" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Contact Number"></asp:Label></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextContact" runat="server" TextMode="Phone"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Mobile cannot be blank" ControlToValidate="TextContact" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextContact" ErrorMessage="Mobile number must be of 10 digit" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Email ID"></asp:Label></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextEmail" runat="server" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email cannot be blank" ControlToValidate="TextEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>


                <tr>
                    <td></td>
                    <td class="auto-style4"> 
                        <asp:Button ID="BtnSubmit" runat="server" Text="Submit" PostBackUrl="~/WebForm1.aspx" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
