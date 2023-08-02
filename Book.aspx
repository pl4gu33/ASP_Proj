<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Book.aspx.cs" Inherits="WebApplication2.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <nav class="navbar bg-dark navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand mb-0 h1">AlSharafi Co.</a>
        </div>
    </nav>
<form id="form1" runat="server">
    <div class="container mt-5 text-center">
        <h1 class="mb-5">Sign up</h1>
        <div class="d-flex flex-wrap justify-content-between align-items-start">
            <div class="col-md-4">
                <asp:Label ID="Label1" runat="server" Text="Book Name:"></asp:Label>
                <asp:TextBox ID="username" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="username" ErrorMessage="Do not use special characters as the name!" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9]+$" Display="Dynamic"></asp:RegularExpressionValidator>
                <br /><br />

                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Publish Date:  "></asp:Label>
                    <asp:TextBox ID="password" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                </div>
                <br />

                <asp:DropDownList ID="categoryDropDown" runat="server">
    <asp:ListItem Text="-- Select a Category --" Value=""></asp:ListItem>
    <asp:ListItem Text="Fiction" Value="Fiction"></asp:ListItem>
    <asp:ListItem Text="Non-Fiction" Value="Non-Fiction"></asp:ListItem>
    <asp:ListItem Text="Fantasy" Value="Fantasy"></asp:ListItem>
    <asp:ListItem Text="Mystery" Value="Mystery"></asp:ListItem>
</asp:DropDownList>
                <br /><br /><br /><br />

                <div class="form-group">
                    <asp:Label ID="Label4" runat="server" Text="Book Author: "></asp:Label>
                    <asp:TextBox ID="bauthor" runat="server" TextMode="Email" CssClass="form-control"></asp:TextBox>
                </div>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="bauthor" ErrorMessage="Do not use special characters as the name!" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9]+$" Display="Dynamic"></asp:RegularExpressionValidator>
                <br />

                <div class="form-group">
                    <asp:Label ID="Label5" runat="server" Text="Price: "></asp:Label>
                    <asp:TextBox ID="price" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="price" ErrorMessage="Please enter a number!" ForeColor="Red"></asp:RegularExpressionValidator>
                    <br />
                </div>
            </div>
            <div class="col-md-4 text-md-right">
                <asp:Button ID="Button1" runat="server" class="btn btn-outline-success" Text="Sign up" BorderWidth="2px" />
                <asp:Button ID="Button2" runat="server" class="btn btn-outline-danger" Text="Delete" BorderWidth="2px" />
                <asp:Button ID="Button3" runat="server" class="btn btn-outline-primary" Text="Edit" BorderWidth="2px" />
            </div>
        </div>
    </div>
</form>


</asp:Content>
