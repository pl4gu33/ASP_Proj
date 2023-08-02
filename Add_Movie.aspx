<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Add_Movie.aspx.cs" Inherits="WebApplication2.Add_Movie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
                    * {
                font-family: 'Montserrat Alternates', sans-serif;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC3300" ValidationGroup="create" />

    <br />
    <h4>Add a new movie</h4>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Movie Name"></asp:Label>
    &nbsp;&nbsp;
    <asp:TextBox ID="Movie_Name" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Requied movie name field" ControlToValidate="Movie_Name" ForeColor="#CC3300" ValidationGroup="create">*</asp:RequiredFieldValidator>
    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="Movie_Name" ErrorMessage="Movie name already exists !" ForeColor="#CC3300" OnServerValidate="validate_redundant_record" ValidationGroup="create">!</asp:CustomValidator>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Production Year"></asp:Label>
    &nbsp;&nbsp;
    <asp:TextBox ID="production_year" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Requied description field" ControlToValidate="production_year" ForeColor="#CC3300" ValidationGroup="create">*</asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Director Name"></asp:Label>
    &nbsp;&nbsp;
    <asp:TextBox ID="director_name" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Requied price field" ControlToValidate="director_name" ForeColor="#CC3300" ValidationGroup="create">*</asp:RequiredFieldValidator>
            <br />
            <br />
    <asp:Label ID="Label5" runat="server" Text="Movie Duration in Hours"></asp:Label>
    &nbsp;&nbsp;
    <asp:TextBox ID="movie_duration" runat="server" TextMode="Number"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Requied price field" ControlToValidate="movie_duration" ForeColor="#CC3300" ValidationGroup="create">*</asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Button ID="add_movie" Class="btn px-5" runat="server" Text="Save" BackColor="#905418" ForeColor="White" OnClick="add_movie_Click" ValidationGroup="create" />

    &nbsp;&nbsp;&nbsp;

    <asp:Button ID="cancel_movie" Class="btn px-5" runat="server" Text="Cancel" BackColor="Red" ForeColor="White" OnClick="cancel_movie_Click" />
</form>
</asp:Content>
