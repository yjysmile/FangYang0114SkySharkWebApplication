<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="FangYang0114SkySharkWebApplication.NA.ManageUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Network Adminstrator
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" DynamicHorizontalOffset="2" Font-Names="Verdana" BackColor="#F7F6F3" Font-Size="0.8em" ForeColor="#7C6F57" StaticSubMenuIndent="10px">
        <DynamicHoverStyle BackColor ="#7C6F57" ForeColor ="White" />
        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <DynamicMenuStyle BackColor="#F7F6F3" />
        <DynamicSelectedStyle BackColor="#5D7B9D" />

        <Items>
            <asp:MenuItem NavigateUrl="~/NA/ManageUsers.aspx" Selected="True" Text="Manage Users" Value="Manage Users"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/NA/ManageDatabase.aspx" Text="Manage Database" Value="Manage Database"></asp:MenuItem>
        </Items>
        <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <StaticSelectedStyle BackColor="#5D7B9D" />
        </asp:Menu>
        <div class="tabContents">
            <table>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="txtUser" runat="server" Text="Manage User Account"></asp:Label>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ChangePassword.aspx">Changed Password</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Logoff.aspx">Logoff</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td colspan ="3">
                        <asp:Label ID="lblMessage" runat="server" Text="" Font-Bold="True" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAddUsername" runat="server"></asp:TextBox>
                    </td>
                     <td>
                        <asp:Label ID="Label1" runat="server" Text="Delete Username"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDelUsername" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAddPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td></td>
                    <td>
                        <asp:Button ID="btnDelDelete" runat="server" Text="Delete" OnClick="btnDelDelete_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Confirm Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAddConfPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td></td>
                    <td></td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Role"></asp:Label>
                     </td>
                    <td>
                        <asp:ListBox ID="lstAddRole" runat="server">
                            <asp:ListItem>BM</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                            <asp:ListItem Value="LOB"></asp:ListItem>
                        </asp:ListBox>
                     </td>
                    <td></td>
                    <td></td>
                </tr>
                 <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnAddSubmit" runat="server" Text="Submit" OnClick="btnAddSubmit_Click" />
                     </td>
                    <td></td>
                    <td></td>
                </tr>
                 <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                </table>
            </div>
         </form>
</asp:Content>