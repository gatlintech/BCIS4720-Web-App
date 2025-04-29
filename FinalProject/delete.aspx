<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="delete.aspx.cs" Inherits="FinalProject.delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .delete-confirmation {
            text-align: center;
            margin-top: 50px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="delete-confirmation">
        <h2>Are you sure you want to delete your account?</h2>
        <asp:Button ID="btnConfirmDelete" runat="server" Text="Yes, Delete My Account" OnClick="btnConfirmDelete_Click" />
        <br /><br />
        <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
    </div>
</asp:Content>
