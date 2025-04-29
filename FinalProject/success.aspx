<%@ Page 
    Title="Dashboard"
    Language="C#" 
    MasterPageFile="~/Site1.Master" 
    AutoEventWireup="true" 
    CodeFile="success.aspx.cs" 
    Inherits="FinalProject.success"
    UnobtrusiveValidationMode="None" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    /* Flex container for top bar */
    .user-header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 30px;
      border-bottom: 1px solid #ccc;
      padding-bottom: 10px;
    }
    /* Right side links */
    .user-options a,
    .user-options .logout {
      margin-left: 20px;
      text-decoration: none;
      font-weight: bold;
    }
    /* Main greeting */
    .welcome {
      text-align: center;
      margin-top: 50px;
    }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="user-header">
    <h1>Dashboard</h1>
    <div class="user-options">
      <asp:HyperLink 
        ID="hlUpdateProfile" 
        runat="server" 
        NavigateUrl="~/update.aspx">
        Update Profile
      </asp:HyperLink>
      <asp:HyperLink 
        ID="hlDeleteAccount" 
        runat="server" 
        NavigateUrl="~/delete.aspx" 
        CssClass="DeleteAccount">
        Delete Account
      </asp:HyperLink>
      <asp:LinkButton 
        ID="lnkLogout" 
        runat="server" 
        OnClick="btnLogout_Click" 
        CssClass="logout">
        Logout
      </asp:LinkButton>
    </div>
  </div>

  <!-- Main greeting area -->
  <div class="welcome">
    <h2>Welcome, <asp:Label ID="lblUser" runat="server" /></h2>
    <p>You’re now logged in.</p>
      <p>
          <asp:Image ID="Image1" runat="server" ImageUrl="~/images/loggedin.png" Height="341px" Width="342px" />
      </p>
  </div>
</asp:Content>
