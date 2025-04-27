<%@ Page
    Title=""
    Language="C#"
    MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeFile="update.aspx.cs"
    Inherits="FinalProject.update"
    UnobtrusiveValidationMode="None" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 50%;
        }
        .auto-style2 {
            text-align: left;
        width: 82px;
    }
        .auto-style3 {
            font-size: small;
        }
        .auto-style4 {
            font-size: small;
            height: 19px;
        }
        .auto-style5 {
            font-size: small;
            width: 133px;
        }
        .auto-style6 {
            width: 133px;
        }
        .auto-style7 {
            font-size: small;
            height: 19px;
            width: 133px;
        }
        .auto-style8 {
            font-size: small;
            height: 34px;
        }
        .auto-style9 {
            font-size: small;
            width: 133px;
            height: 34px;
        }
    .auto-style10 {
        font-size: small;
        width: 82px;
    }
    .auto-style11 {
        font-size: small;
        height: 34px;
        width: 82px;
    }
    .auto-style12 {
        font-size: small;
        height: 19px;
        width: 82px;
    }
        .auto-style13 {
            font-size: small;
            width: 168px;
        }
        .auto-style14 {
            font-size: small;
            height: 34px;
            width: 168px;
        }
        .auto-style15 {
            font-size: small;
            height: 19px;
            width: 168px;
        }
        .auto-style16 {
            font-size: small;
            width: 133px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style1">
        <tr>
            <td class="auto-style10">Update Information</td>
            <td class="auto-style3">Current Values</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style5">
                <asp:Label ID="lblNewValue" runat="server" Text="New Value"></asp:Label>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style3">
                Email:
                <asp:Label ID="lblEmail" runat="server"></asp:Label>
            </td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:CheckBox ID="cbPassword" runat="server" AutoPostBack="true" CssClass="auto-style3" OnCheckedChanged="cbPassword_CheckedChanged" />
                <span class="auto-style3">&nbsp;Change Password</span></td>
            <td class="auto-style3">
                Password:
                <asp:Label ID="lblPassword" runat="server"></asp:Label>
            </td>
            <td class="auto-style13">Password</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtPassword" runat="server" CssClass="auto-style3" TextMode="Password" Width="80px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" CssClass="auto-style3" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style8"></td>
            <td class="auto-style14">
                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" Width="80px"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Passwords must match"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:CheckBox ID="cbFirstName" runat="server" AutoPostBack="true" OnCheckedChanged="cbFirstName_CheckedChanged" />
                Change First Name</td>
            <td class="auto-style4">
                First Name:<asp:Label ID="lblFirstName" runat="server"></asp:Label>
            </td>
            <td class="auto-style15">First Name</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtFirstName" runat="server" Width="80px"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First Name is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:CheckBox ID="cbLastName" runat="server" AutoPostBack="true" OnCheckedChanged="cbLastName_CheckedChanged" />
                Change Last Name</td>
            <td class="auto-style3">
                Last Name:<asp:Label ID="lblLastName" runat="server"></asp:Label>
            </td>
            <td class="auto-style13">Last Name</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtLastName" runat="server" Width="80px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last Name is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:CheckBox ID="cbYearofBirth" runat="server" AutoPostBack="true" OnCheckedChanged="cbYearofBirth_CheckedChanged" />
                Change Year of Birth</td>
            <td class="auto-style3">
                Year of Birth:<asp:Label ID="lblYearofBirth" runat="server"></asp:Label>
            </td>
            <td class="auto-style13">Year of Birth</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtYearofBirth" runat="server" Width="80px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="rfvYearoFBirth" runat="server" ControlToValidate="txtYearofBirth" ErrorMessage="Year of Birth is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style3">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Student4720ConnectionString3 %>" DeleteCommand="DELETE FROM [Login] WHERE [Email] = @Email" InsertCommand="INSERT INTO [Login] ([Email], [Password], [FName], [LName], [YOB]) VALUES (@Email, @Password, @FName, @LName, @YOB)" ProviderName="<%$ ConnectionStrings:Student4720ConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [Login]" UpdateCommand="UPDATE [Login] SET [Password] = @Password, [FName] = @FName, [LName] = @LName, [YOB] = @YOB WHERE [Email] = @Email">
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
            <td class="auto-style13">
                &nbsp;</td>
            <td class="auto-style16">
                <asp:Button ID="btnUpdateInformation" runat="server" OnClick="btnUpdateInformation_Click" Text="Update Information" />
            </td>
            <td class="auto-style3">
                <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
