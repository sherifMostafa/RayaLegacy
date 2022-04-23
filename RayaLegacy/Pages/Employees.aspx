<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="RayaLegacy.Pages.Employees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 195px;
        }
        .auto-style3 {
            width: 654px;
        }
        .auto-style4 {
            width: 679px;
        }
        .auto-style5 {
            width: 195px;
            height: 26px;
        }
        .auto-style6 {
            width: 679px;
            height: 26px;
        }
        .auto-style7 {
            width: 654px;
            height: 26px;
        }
        .auto-style8 {
            height: 26px;
        }
        .auto-style9 {
            width: 230px;
        }
        .auto-style10 {
            width: 230px;
            height: 26px;
        }
        .auto-style11 {
            width: 195px;
            height: 29px;
        }
        .auto-style12 {
            width: 230px;
            height: 29px;
        }
        .auto-style13 {
            width: 378px;
            height: 29px;
        }
        .auto-style15 {
            height: 29px;
        }
        .auto-style16 {
            width: 378px;
        }
        .auto-style17 {
            width: 378px;
            height: 26px;
        }
        .auto-style18 {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style4" colspan="2">
                        <asp:Image ID="Image1" runat="server" Height="76px" ImageUrl="~/Images/1519856428466.jpg" Width="107px" />
                    </td>
                    <td class="auto-style3"><strong>
                        <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Logout" BackColor="#3333FF" CssClass="auto-style18" ForeColor="White" Width="106px" />
                        </strong></td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style6" colspan="2">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="364px">
                            <asp:ListItem>Choose</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style7"></td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td colspan="2">
                        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td class="auto-style3" rowspan="6">
                        <asp:GridView ID="dgvEmployee" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="521px">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
                                <asp:BoundField DataField="hireDate" HeaderText="hireDate" SortExpression="hireDate" DataFormatString="{0:MM/dd/yyyy}"/>
                                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Employees]"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style12">
                        <strong>
                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style9">
                        <strong>
                        <asp:Label ID="Label2" runat="server" Text="Salary"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style16">
                        <asp:TextBox ID="txtSalary" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style10">
                        <strong>
                        <asp:Label ID="Label3" runat="server" Text="Hire Date"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="txtHireDate" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style8" colspan="2">
                        <asp:Label ID="lblIdHidden" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style6" colspan="2">
                        <asp:Button ID="btnAdd" runat="server" Text="Add" BackColor="#0066CC" CssClass="auto-style18" ForeColor="White" Height="34px" OnClick="btnAdd_Click" Width="65px" />
                        <strong>
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" BackColor="Red" CssClass="auto-style18" ForeColor="White" Height="36px" OnClick="btnDelete_Click" Width="92px" />
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" BackColor="#999966" CssClass="auto-style18" ForeColor="White" Height="36px" OnClick="btnUpdate_Click" Width="84px"/>
                        
                        <asp:Button ID="btnApproved" runat="server" Text="Approved" BackColor="Lime" CssClass="auto-style18" ForeColor="White" Height="37px" OnClick="btnApproved_Click" Width="108px"/>
                        </strong>
                    </td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4" colspan="2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4" colspan="2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4" colspan="2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4" colspan="2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
           
        </div>
    </form>
</body>
</html>
