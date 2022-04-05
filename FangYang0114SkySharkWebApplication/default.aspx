<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="FangYang0114SkySharkWebApplication._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    HOME
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Welcome to Shyshark Airline Home Page</h1>
    <asp:Image ID="Image1" runat="server"  ImageUrl="~/skyShark.png" Width="890px"/>
    <p>Launched in 1999,SkyShark Airlines is a United States-based airline that has rapidlly grown in the past years.</p>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                    </td>
                    <td></td>
                    
                </tr>
                  <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
                      </td>
                    <td>
                        <asp:TextBox ID="txtUserNme" runat="server"></asp:TextBox>
                      </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserNme" ErrorMessage="请输入正确的用户名"></asp:RequiredFieldValidator>
                      </td>
                </tr>
                  <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                      </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                      </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="请输入正确的密码"></asp:RequiredFieldValidator>
                      </td>
                </tr>
                  <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                      </td>
                    <td></td>
                </tr>
            </table>
        </div>

    </form>
</asp:Content>
