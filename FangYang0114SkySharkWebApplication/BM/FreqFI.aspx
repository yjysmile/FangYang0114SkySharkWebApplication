<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FreqFI.aspx.cs" Inherits="FangYang0114SkySharkWebApplication.BM.FreqFI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Business Manage
    <style type="text/css">
        .auto-style1 {
            width: 268435456px;
        }
    </style>
    <style type="text/css">
        .auto-style1 {
            height: 27px;
        }
    </style>
    <style type="text/css">
        .auto-style1 {
            width: 167px;
        }
        .auto-style2 {
            width: 87px;
        }
    </style>
    <style type="text/css">
        .auto-style1 {
            width: 172px;
        }
        .auto-style2 {
            width: 192px;
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
            <asp:MenuItem NavigateUrl="~/BM/AddFl.aspx" Text="Add Flight" Value="Add Flight"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/BM/RequestID.aspx"  Text="Request ID" Value="Request ID"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/BM/Reports.aspx" Text="Reports" Value="Reports"></asp:MenuItem>
            <asp:MenuItem Selected="True" Text="Frequent Filers" Value="Frequent Filers"></asp:MenuItem>
        </Items>
        <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <StaticSelectedStyle BackColor="#5D7B9D" />
        </asp:Menu>
        <div class="tabContents">
            <table>
                <tr>
                    <td colspan="2" class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="Generate a flight usage report:"></asp:Label>
                    </td>
                    <td class="auto-style1"></td>
                </tr>
                  <tr>
                    <td></td>
                    <td class="auto-style2">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ChangePassword.aspx">Changed Password</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Logoff.aspx">Logoff</asp:HyperLink>
                    </td>
                </tr>
                  <tr>
                    <td colspan="2">
                        <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label>
                    </td>
                    <td></td>                  
                </tr>
                <tr>
                    <td>Total number for times Follown</td>
                    <td class="auto-style2"><asp:DropDownList ID="listTimeFollown" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem Value="4"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>Applicablr discount percentage</td>
                    <td><asp:DropDownList ID="lstDisc1" runat="server">
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        </asp:DropDownList></td>
                    <td>
                        <asp:Button ID="btnAdd1" runat="server" Text="Add" OnClick="btnAdd1_Click" />
                    </td>
                </tr>
                 <tr>
                     <td>Customers who have paid more than a specified fare</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtFare" runat="server" Width="172px"></asp:TextBox>
                        
                    </td>
                     <td>Applicablr discount percentage</td>
                    <td><asp:DropDownList ID="lstDisc2" runat="server">
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                    <td>
                        <asp:Button ID="btnAdd2" runat="server" Text="Add" OnClick="btnAdd2_Click" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                
                    <td class="auto-style2"></td>
                </tr>
               <tr>
                    <td colspan="3">
                        <asp:GridView ID="DataGrid" runat="server" Width="403px">
                        </asp:GridView>
                    </td>
                   
                  
                </tr>
             
            </table>
        </div>
    </form>
</asp:Content>