<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CancelRes.aspx.cs" Inherits="FangYang0114SkySharkWebApplication.LOB.CancelRes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Business Executive
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" DynamicHorizontalOffset="2" Font-Names="Verdana" BackColor="#F7F6F3" Font-Size="0.8em" ForeColor="#7C6F57" StaticSubMenuIndent="10px">
        <DynamicHoverStyle BackColor ="#7C6F57" ForeColor ="White" />
        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <DynamicMenuStyle BackColor="#F7F6F3" />
        <DynamicSelectedStyle BackColor="#5D7B9D" />

        <Items>
            <asp:MenuItem NavigateUrl="~/LOB/CreateRes.aspx" Text="Create Reservation" Value="Create Reservation"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/LOB/CancelRes.aspx" Selected="True" Text="Cancle Reservation" Value="Cancle Reservation"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/LOB/QueryStat.aspx" Text="Quary Status" Value="Quary Status"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/LOB/ConfirmRes.aspx" Text="Confirm Reservation" Value="Confirm Reservation"></asp:MenuItem>
        </Items>
        <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <StaticSelectedStyle BackColor="#5D7B9D" />
        </asp:Menu>
        <div class="tabContents">
            <table>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Lable" runat="server" Text="Cancle a new Reservation"></asp:Label>
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
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="Ticket No"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtTNo" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please specify a valid ticket number" ControlToValidate="txtTNo"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                  <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnCancle" runat="server" Text="Cancle Ticket" />
                      </td>
                    <td></td>
                </tr>
            </table>
            </div>
        </form>
</asp:Content>
