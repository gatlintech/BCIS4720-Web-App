<%@ Page 
    Title="Register" 
    Language="C#" 
    MasterPageFile="~/Site1.Master" 
    AutoEventWireup="true" 
    CodeFile="register.aspx.cs" 
    Inherits="FinalProject.Register"
    UnobtrusiveValidationMode="None" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .register-title {
            text-align: center;
            font-size: 20px;
            margin-top: 20px;
        }
        .auto-style1 {
            width: 85%;
        }
        .auto-style2 {
            text-align: right;
        }
        .auto-style3 {
            text-align: center;
            margin-top: 20px;
        }
        .auto-style4 {
            text-align: center;
        }
    </style>
    <script type="text/javascript">
        function clearFields() {
            document.getElementById('<%= txtEmail.ClientID %>').value = "";
            document.getElementById('<%= txtConfirmEmail.ClientID %>').value = "";
            document.getElementById('<%= txtPassword.ClientID %>').value = "";
            document.getElementById('<%= txtConfirmPassword.ClientID %>').value = "";
            document.getElementById('<%= txtFirstName.ClientID %>').value = "";
            document.getElementById('<%= txtLastName.ClientID %>').value = "";
            document.getElementById('<%= txtYearofBirth.ClientID %>').value = "";
            return false;
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="register-title">Register</h2>
    <p class="auto-style3"><strong>We are excited you are joining us! Please complete the form below.</strong></p>
<table align="center" class="auto-style1">
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style2">
            Email:
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style2">
            Confirm Email:
            <asp:TextBox ID="txtConfirmEmail" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td>
            <asp:CompareValidator ID="cvEmail" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtConfirmEmail" ErrorMessage="Emails must match"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style2">
            Password:
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style2">
            Confirm Password:
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Password must match"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style2">
            Name:
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First name is required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style2">
            Last Name:
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last name is required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style2">
            Year of Birth:
            <asp:TextBox ID="txtYearofBirth" runat="server" TextMode="Number">YYYY</asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="revYearofBirth" runat="server" ControlToValidate="txtYearofBirth" ErrorMessage="Year of birth must be 4 digits" ValidationExpression="\d{4}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4" colspan="3">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" />
    <asp:Button ID="btnClear" runat="server" Text="Clear" OnClientClick="clearFields(); return false;" CausesValidation="False" />
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Student4720ConnectionString2 %>" DeleteCommand="DELETE FROM [Login] WHERE [Email] = @Email" InsertCommand="INSERT INTO [Login] ([Email], [Password], [FName], [LName], [YOB]) VALUES (@Email, @Password, @FName, @LName, @YOB)" ProviderName="<%$ ConnectionStrings:Student4720ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Login]" UpdateCommand="UPDATE [Login] SET [Password] = @Password, [FName] = @FName, [LName] = @LName, [YOB] = @YOB WHERE [Email] = @Email">
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
</table>
    <!-- You can add your registration form fields here -->
</asp:Content>
