<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddFl.aspx.cs" Inherits="FangYang0114SkySharkWebApplication.BM.AddFl" %>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <form id="form1" runat="server">
        <asp:Menu ID="Menu1" runat="server" BackColor="#E3EAEB" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#666666" Orientation="Horizontal" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#E3EAEB" />
            <DynamicSelectedStyle BackColor="#1C5E55" />
            <Items>
                <asp:MenuItem NavigateUrl="~/BM/AddFl.aspx" Selected="True" Text="Add Flight" Value="Add Flight"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/BM/RequestID.aspx" Text="Request ID" Value="Request ID"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/BM/Reports.aspx" Text="Reports" Value="Reports"></asp:MenuItem>
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
                        <asp:Label ID="Label1" runat="server" Text="Add New Flight"></asp:Label>
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
                        <asp:Label ID="Label2" runat="server" Text="Flight Number"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFlightNumber" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFlightNumber" ErrorMessage="Flight Number Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Departure Time"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtDepartureTime" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDepartureTime" ErrorMessage="Departure Time Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Place"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPlace" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPlace" ErrorMessage="Place Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label5" runat="server" Text="Arrival Time"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtArrivalTime" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtArrivalTime" ErrorMessage="Arrival Time Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Destination"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDestination" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDestination" ErrorMessage="Destination Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Aircraft Type"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAircraftType" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAircraftType" ErrorMessage="Aircraft Type Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Number of Seats(Executive)"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNumberEx" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtNumberEx" ErrorMessage="Number of Seats Executive Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Executive Class Fares"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtExecutiveClassFares" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtExecutiveClassFares" ErrorMessage="Executive Class Fares Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="Number of Seats(Business)"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNumberofBus" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtNumberofBus" ErrorMessage="Number of Seats Business Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text="Business Class Fares"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtBusinessClassFares" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtBusinessClassFares" ErrorMessage="Business Class Fares Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                       
                    </td>
                    <td>
                        
                        <asp:Button ID="Button1" runat="server" Text="Submit" />
                        &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="Canle" />
                        
                    </td>
                    <td></td>
                </tr>
            </table>
        </div>
    </form>
</asp:Content>
