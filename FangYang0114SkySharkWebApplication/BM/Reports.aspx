<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="FangYang0114SkySharkWebApplication.BM.Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     Business Manager
    <style type="text/css">
        .auto-style1 {
            width: 10px;
        }
    </style>
    <style type="text/css">
        .auto-style1 {
            height: 27px;
        }
        .auto-style2 {
            height: 50px;
        }
    </style>
     <style type="text/css">
         .auto-style1 {
             height: 27px;
         }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:Menu ID="Menu1" runat="server" BackColor="#E3EAEB" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#666666" Orientation="Horizontal" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#E3EAEB" />
            <DynamicSelectedStyle BackColor="#1C5E55" />
            <Items>
                <asp:MenuItem NavigateUrl="~/BM/AddFl.aspx"  Text="Add Flight" Value="Add Flight"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/BM/RequestID.aspx" Text="Request ID" Value="Request ID"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/BM/Reports.aspx" Selected="True" Text="Reports" Value="Reports"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/BM/FreqFI.aspx" Text="Frequent Filers" Value="Frequent Filers"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#666666" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#1C5E55" />
        </asp:Menu>
        <div class="tabContents">
            <table>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Text="Generate a Reports:"></asp:Label>
                    </td>
                    <td></td>
                   
                </tr>
                 <tr>
                    <td></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ChangePassword.aspx">Change Password</asp:HyperLink></td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Logoff.aspx">Logoff</asp:HyperLink></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Select a report:"></asp:Label>
                    </td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Generate a flight usage report for all flight flown by the airline."></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Generate" BackColor="Silver" BorderColor="Blue" />
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Genrate a customer affinity report for top 100 customers"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Generate" BackColor="Silver" BorderColor="Blue" />
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Generate a total revenue report from the month"></asp:Label>
                        <asp:ListBox ID="lstMonths" runat="server" Height="104px" Width="78px">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                        </asp:ListBox>
                        <asp:ListBox ID="lstYear" runat="server" Height="101px">
                            <asp:ListItem>2018</asp:ListItem>
                            <asp:ListItem>2019</asp:ListItem>
                            <asp:ListItem>2020</asp:ListItem>
                            <asp:ListItem>2021</asp:ListItem>
                            <asp:ListItem>2022</asp:ListItem>
                            <asp:ListItem>2023</asp:ListItem>
                            <asp:ListItem>2024</asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="Generate" BackColor="Silver" BorderColor="Blue" />
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                    </td>
                    <td class="auto-style1"></td>
                    
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
        </div>
    </form>
</asp:Content>
