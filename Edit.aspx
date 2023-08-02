<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="WebApplication2.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
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
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC3300" ValidationGroup="create" />
    
    <br />
    <h4>Edit movie</h4>
    <p>&nbsp;</p>
    Movie ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Movie_ID" runat="server" ReadOnly="True" TextMode="Number" Font-Bold="True" ForeColor="#009933"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Movie Name"></asp:Label>
    &nbsp;&nbsp;
    <asp:TextBox ID="Movie_Name" runat="server" Font-Bold="True" ForeColor="#009933"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Requied movie name field" ControlToValidate="Movie_Name" ForeColor="#CC3300" ValidationGroup="create">*</asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Production Year"></asp:Label>
    &nbsp;&nbsp;
    <asp:TextBox ID="production_year" runat="server" Font-Bold="True" ForeColor="#009933"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Requied Production Year field" ControlToValidate="production_year" ForeColor="#CC3300" ValidationGroup="create">*</asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Director Name"></asp:Label>
    &nbsp;&nbsp;
    <asp:TextBox ID="director_name" runat="server" Font-Bold="True" ForeColor="#009933"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Requied Director Name field" ControlToValidate="director_name" ForeColor="#CC3300" ValidationGroup="create">*</asp:RequiredFieldValidator>
        <br />
        <br />
    <asp:Label ID="Label5" runat="server" Text="Movie Duration in Hours"></asp:Label>
    &nbsp;&nbsp;
    <asp:TextBox ID="movie_duration" runat="server" Font-Bold="True" ForeColor="#009933" TextMode="Number"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Requied Movie Duration field" ControlToValidate="movie_duration" ForeColor="#CC3300" ValidationGroup="create">*</asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Button ID="edit_movie" Class="btn px-5" runat="server" Text="Save" BackColor="#905418" ForeColor="White" ValidationGroup="create" OnClick="edit_movie_Click"/>

    &nbsp;&nbsp;&nbsp;

    <asp:Button ID="cancel_movie" Class="btn px-5" runat="server" Text="Cancel" BackColor="Red" ForeColor="White" OnClick="cancel_movie_Click"  />


    <br />
    <br />
    

</form>
</asp:Content>
