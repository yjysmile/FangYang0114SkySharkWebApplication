<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="QueryStat.aspx.cs" Inherits="FangYang0114SkySharkWebApplication.LOB.QueryStat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     Business Executive
    <style type="text/css">
        .auto-style1 {
            height: 85px;
        }
    </style>
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
        .auto-style2 {
            height: 18px;
        }
    </style>
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
    </style>
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
            <asp:MenuItem NavigateUrl="~/LOB/CancelRes.aspx" Text="Cancle Reservation" Value="Cancle Reservation"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/LOB/QueryStat.aspx" Selected="True" Text="Quary Status" Value="Quary Status"></asp:MenuItem>
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
                        <asp:Label ID="txtUser" runat="server" Text="Enquire about the status of flights and flights"></asp:Label>
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
                 
            </table>
            <asp:Wizard ID="Wizard1" runat="server" BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ActiveStepIndex="1" Width="569px" OnFinishButtonClick="Wizard1_FinishButtonClick">
                <HeaderStyle BackColor="#FFCC66" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em" ForeColor="#333333" HorizontalAlign="Center" BorderColor="#FFFBD6" BorderWidth="2px" />
                <NavigationButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
                <SideBarButtonStyle ForeColor="White" />
                <SideBarStyle BackColor="#990000" Font-Size="0.9em" VerticalAlign="Top" />
                <WizardSteps>
                    <asp:WizardStep ID="WizardStep1" runat="server" Title="Query Flight Status">
                        <!--for step 1-->
                        <table>
                            <tr>
                                <td colspan ="3">
                                    <asp:Label ID="Label1" runat="server" Text="Enquire about the status of flights"></asp:Label></td>
                                
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label6" runat="server" Text="Flight Number"></asp:Label></td><td>
                                    <asp:TextBox ID="txtFltNo" runat="server"></asp:TextBox></td>
                                <td></td>
                               
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label3" runat="server" Text="Class"></asp:Label>
                                </td>
                                <td class="auto-style1">
                                    <asp:ListBox ID="ListBox1" runat="server">
                                        <asp:ListItem>Executive</asp:ListItem>
                                        <asp:ListItem>Business</asp:ListItem>
                                    </asp:ListBox>
                                </td>
                                <td class="auto-style1"></td>
                                
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label4" runat="server" Text="Date"></asp:Label>
                                </td>
                                <td>
                                    <asp:Calendar ID="CalDepDate" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Double" BorderWidth="2px" DayNameFormat="FirstTwoLetters"></asp:Calendar>
                                </td>
                                <td></td>
                                
                            </tr>
                            <tr>
                                <td class="auto-style2"></td>
                                <td></td>
                                <td>
                                    <asp:Button ID="btnSubmit1" runat="server" Text="Submit" BackColor="Silver" BorderColor="Blue" Font-Names="Microsoft Sans Serif" />
                                </td>
                                <td></td>
                            </tr>
                        </table>
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStep2" runat="server" Title="Query Tickets Status">
                        <!--for step 2-->
                    <table>
                    <tr>
                    <td colspan="3">
                        <asp:Label ID="Lable" runat="server" Text="Query Tickets Status"></asp:Label>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ChangePassword.aspx">Changed Password</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Logoff.aspx">Logoff</asp:HyperLink>
                    </td>
                </tr>               
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Ticket No"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTNo" runat="server"></asp:TextBox>
                    </td>
                    <td>                     
                    </td>
                </tr>
                  <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnSubmit2" runat="server" Text="Submit" />
                      </td>
                    <td></td>
                </tr>
                        </table>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
           </div>
         </form>
</asp:Content>