<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="FinalProject.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Page-specific head content -->
    <style type="text/css">
        .auto-style1 { text-align: center; }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="auto-style1">Welcome to Our Website!</h2>
    <p class="auto-style1">
        <asp:Image ID="homepage" runat="server" Height="241px" ImageUrl="~/images/welcome.jpeg" Width="624px" />
    </p>
</asp:Content>

