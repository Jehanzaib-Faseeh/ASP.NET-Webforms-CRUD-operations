<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<appSettings>  
   <add key="ValidationSettings:UnobtrusiveValidationMode" value="None" />  
 </appSettings>  
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #003300;
        }
        .auto-style2 {
            width: 683px;
        }
        .auto-style3 {
            width: 825px;
        }
    </style>
</head>
<body style="background-color: #99FF66">
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style1" style="text-decoration: underline; text-align: center">Login</h1>
            <br />
            <table border="1" align="center" class="auto-style3">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextUserName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username cannot be blank" ControlToValidate="TextUserName" ForeColor="Red" ></asp:RequiredFieldValidator>
                    </td>
                    
                   
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password cannot be blank" ControlToValidate="TextPassword" ForeColor="Red" ></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td class="auto-style2"> 
                        <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" />
                        <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td></td>
                    <td class="auto-style2">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx">New User</asp:HyperLink> 
                        </td>
                </tr>

            </table>


        </div>
    </form>
</body>
</html>
