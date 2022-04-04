<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Logoff.aspx.cs" Inherits="FangYang0114SkySharkWebApplication.Logoff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    HOME
    <style type="text/css">
        #TextArea1 {
            height: 147px;
            width: 626px;
        }
    </style>
    <style type="text/css">
        #TextArea1 {
            height: 240px;
            width: 800px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/default.aspx">Click Here to Logon</asp:HyperLink>
    <textarea id="TextArea1">
         Thank you for using SkyShark Airline.
         Looking forward for serving you again.
    </textarea>
</div>
    </form>
</asp:Content>
