<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
        .auto-style1 {
            width: 341px;
        }
        .auto-style3 {
            width: 212px;
        }
        .auto-style4 {
            width: 341px;
            height: 32px;
        }
        .auto-style6 {
            width: 212px;
            height: 32px;
        }
        .auto-style7 {
            height: 32px;
        }
        .auto-style8 {
            width: 403px;
        }
        .auto-style9 {
            width: 403px;
            height: 32px;
        }
        form {
            margin: 40px;
    }
                    * {
                font-family: 'Montserrat Alternates', sans-serif;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <form id="form1" runat="server">
    <table style="width: 100%">
        <tr>
            <td style="width: 362px">
                <br />
                <asp:Label ID="Label1" runat="server" Text="Welcome back, check out the movies we have for you!" Font-Bold="True" Font-Names="Georgia" Font-Size="Large" ForeColor="Maroon" BorderColor="#905418"></asp:Label>
                <br />
            </td>
            <td style="width: 235px">&nbsp;</td>
            <td style="width: 120px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 362px">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC3300" ValidationGroup="login" style="margin-right: 0px" />
                <br />
                <asp:Label ID="error_message" runat="server" Font-Size="X-Large" ForeColor="#CC3300"></asp:Label>
            </td>
            <td style="width: 235px">&nbsp;</td>
            <td style="width: 120px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 362px; height: 31px;">
                <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
            </td>
            <td style="width: 235px; height: 31px;">
                <asp:TextBox ID="username" runat="server" Width="200px" Style="margin-left: 0"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="Required username" ValidationGroup="login" ForeColor="#CC3300">*</asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
            <td style="width: 120px; height: 31px;"></td>
            <td style="height: 31px"></td>
        </tr>
        <tr>
            <td style="width: 362px">
                <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
            </td>
            <td style="width: 235px">
                <asp:TextBox ID="password" runat="server" Width="202px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="Required password" ValidationGroup="login" ForeColor="#CC3300">*</asp:RequiredFieldValidator>
            </td>
            <td style="width: 120px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 362px">&nbsp;</td>
            <td style="width: 235px">&nbsp;</td>
            <td style="width: 120px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 362px">
                <br />
                <asp:Button ID="Button1" class="btn" runat="server" Text="Login" ValidationGroup="login" BackColor="#CC3300" Font-Names="Tahoma" ForeColor="White" Width="150px" OnClick="Button1_Click" />
                <br />
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="SignUp.aspx">Don&#39;t have an account? create one</asp:HyperLink>
            </td>
            <td style="width: 235px">&nbsp;</td>
            <td style="width: 120px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 362px">&nbsp;</td>
            <td style="width: 235px">&nbsp;</td>
            <td style="width: 120px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>

</asp:Content>
