<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RayaLegacy.Pages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
            width: 103px;
        }
        .auto-style5 {
            width: 73px;
        }
        .auto-style6 {
            height: 115px;
            width: 73px;
        }
        .auto-style7 {
            width: 90px;
        }
        .auto-style8 {
            height: 115px;
            width: 90px;
        }
        .auto-style10 {
            width: 90px;
            height: 69px;
        }
        .auto-style11 {
            width: 73px;
            height: 69px;
        }
        .auto-style13 {
            height: 115px;
        }
        .auto-style14 {
            width: 103px;
        }
        .auto-style15 {
            height: 115px;
            width: 103px;
        }
        .auto-style16 {
            width: 103px;
            height: 69px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <table class="auto-style1">
                <tr>
                    <td class="auto-style14" colspan="2">&nbsp;</td>
                    <td class="auto-style7" rowspan="2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2"></td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style15" colspan="2"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style13"></td>
                </tr>
                <tr>
                    <td class="auto-style14" colspan="2">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Label ID="lblMessage" runat="server" ForeColor="#FF3300"></asp:Label>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style14"><strong>
                        <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
                        </strong></td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtUserName" runat="server" Height="46px" Width="522px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td rowspan="3">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/1519856428466.jpg" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style14"><strong>
                        <asp:Label ID="Label2" runat="server" Text="PassWord"></asp:Label>
                        </strong></td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtPassWord" runat="server" Height="42px" Width="522px" OnTextChanged="txtPassWord_TextChanged" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16" colspan="2"></td>
                    <td class="auto-style10">
                        <asp:Button ID="btnLogin" runat="server" BackColor="#3333FF" ForeColor="White" Height="47px" OnClick="btnLogin_Click" Text="Login" Width="529px" />
                    </td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td colspan="5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14" colspan="2"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style5"></td>
                    <td></td>
                </tr>
            </table>
            
        </div>
    </form>
</body>
</html>
