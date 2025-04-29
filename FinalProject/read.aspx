<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="read.aspx.cs" Inherits="FinalProject.read" UnobtrusiveValidationMode="None" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> 
    <!-- Styling section for layout and alignment --> 
    <style type="text/css"> 
    .auto-style1 { 
        text-align: center; 
    } 
    .auto-style2 { 
        width: 80%; 
    } 
    .auto-style3 { 
        text-align: right; 
        width: 410px; 
    } 
    .auto-style4 { 
        text-align: left; 
    } 
    .auto-style5 { 
        text-align: right; 
        width: 410px; 
        height: 63px; 
    } 
    .auto-style6 { 
        text-align: left; 
        height: 63px; 
    } 
    </style> 
</asp:Content> 
 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" 
runat="server"> 
    <!-- Credentials shown at the top --> 
    <p class="auto-style1"> 
    Here are the credentials to login to the database</p> 
    <p class="auto-style1"> 
        Email: <a href="mailto:scrappy@unt.edu">untuser@gmail.com</a></p> 
    <p class="auto-style1"> 
        Password: untuser</p> 
 
    <!-- Placeholder image --> 
    <p class="auto-style1"> 
        <asp:Image ID="userpic" runat="server" ImageUrl="~/images/userpic.jpg" Height="169px" Width="173px" /> 
    </p> 
 
    <!-- Form layout table --> 
    <table align="center" class="auto-style2"> 
        <tr> 
            <td class="auto-style3">Email:</td> 
            <td class="auto-style4"> 
                <!-- Email input field --> 
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox> 
                <!-- Validator to make sure email is entered --> 
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
ControlToValidate="txtEmail" ErrorMessage="Email 
Required"></asp:RequiredFieldValidator> 
            </td> 
        </tr> 
        <tr> 
            <td class="auto-style3">Password:</td> 
            <td class="auto-style4"> 
                <!-- Password input field --> 
                <asp:TextBox ID="txtPassword" runat="server" 
TextMode="Password"></asp:TextBox> 
                <!-- Validator to make sure password is entered --> 
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" 
ControlToValidate="txtPassword" ErrorMessage="Password 
Required"></asp:RequiredFieldValidator> 
            </td> 
        </tr> 
        <tr> 
            <td class="auto-style5"> 
                <!-- Login button triggers backend logic --> 
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" 
/> 
            </td> 
            <td class="auto-style6"> 
                <!-- Clear button  --> 
                <asp:Button ID="btnClear" runat="server" Text="Clear" /> 
 
                <!-- SQL DataSource for CRUD operations on the Login table --> 
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Student4720ConnectionString %>" 
                    DeleteCommand="DELETE FROM [Login] WHERE [Email] = @Email" 
                    InsertCommand="INSERT INTO [Login] ([Email], [Password], [FName], [LName], [YOB]) VALUES (@Email, @Password, @FName, @LName, @YOB)" 
                    ProviderName="<%$ ConnectionStrings:Student4720ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT * FROM [Login]" 
                    UpdateCommand="UPDATE [Login] SET [Password] = @Password, [FName] = @FName, [LName] = @LName, [YOB] = @YOB WHERE [Email] = @Email"> 
                     
                    <DeleteParameters> 
                        <asp:Parameter Name="Email" Type="String" /> 
                    </DeleteParameters> 
 
                    <InsertParameters> 
                        <asp:Parameter Name="Email" Type="String" /> 
                        <asp:Parameter Name="Password" Type="String" /> 
                        <asp:Parameter Name="FName" Type="String" /> 
                        <asp:Parameter Name="LName" Type="String" /> 
                        <asp:Parameter Name="YOB" Type="Int32" /> 
                    </InsertParameters> 
 
                    <UpdateParameters> 
                        <asp:Parameter Name="Password" Type="String" /> 
                        <asp:Parameter Name="FName" Type="String" /> 
                        <asp:Parameter Name="LName" Type="String" /> 
                        <asp:Parameter Name="YOB" Type="Int32" /> 
                        <asp:Parameter Name="Email" Type="String" /> 
                    </UpdateParameters> 
                </asp:SqlDataSource> 
            </td> 
        </tr> 
        <tr> 
            <td class="auto-style1" colspan="2"> 
                <!-- Label to display messages (like login success/failure) --> 
                <asp:Label ID="lblMsg" runat="server"></asp:Label> 
            </td> 
        </tr> 
    </table> 
</asp:Content>