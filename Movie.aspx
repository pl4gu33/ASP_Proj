<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Movie.aspx.cs" Inherits="WebApplication2.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
            * {
                font-family: 'Montserrat Alternates', sans-serif;
            }
            .green-button {
    background-color: green;
    color: white;}
    .mt-5 {
        font-family: 'Montserrat Alternates', sans-serif;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
           <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <asp:Label ID="user_account" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Maroon" Font-Underline="True"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLogout" runat="server" BackColor="Red" class="btn" ForeColor="White" OnClick="btnLogout_Click" PostBackUrl="Login.aspx" Text="Log Out" />
            <br />
            <br />
            <br />
            Search&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Search_Box" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" class="btn" Text="Search By name" OnClick="Search_Movie" BackColor="#905418" ForeColor="White" />
            <asp:Button ID="Button2" runat="server" class="btn" Text="Show All movies" OnClick="ShowAllMovies" BackColor="#905418" ForeColor="White" />

            &nbsp;<br />
            <asp:Label ID="error_label" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            <asp:GridView ID="Movies_table" class="mt-5" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="8" Width="1210px" OnRowDeleting="delete_row" OnRowDataBound="row">
                <Columns>
                    <asp:HyperLinkField Text="Edit" DataNavigateUrlFields="Movie_id" DataNavigateUrlFormatString="Edit.aspx?id={0}">
                        <ControlStyle BackColor="#905418" ForeColor="White" Width="80px" CssClass="btn" />
                    </asp:HyperLinkField>
                    <asp:ButtonField CommandName="Delete" Text="Delete">
                        <ControlStyle BackColor="#905418" ForeColor="White" CssClass="btn" Width="90px" />
                    </asp:ButtonField>
                </Columns>
                <FooterStyle BackColor="#905418" ForeColor="#330099" />
                <HeaderStyle BackColor="#905418" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="Black" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
            <br />
            <asp:Button ID="Button3" runat="server" BackColor="#905418" class="btn" ForeColor="White" OnClick="ShowAllMovies" PostBackUrl="Add_Movie.aspx" Text="Add movie" />
        </asp:View>

        <asp:View ID="View2" runat="server">
            <h2>&nbsp;</h2>

            <h2>Do you want to delete
                <asp:Label ID="movie_name" runat="server" Text="">?</asp:Label>
            </h2>
            <p>
                &nbsp;</p>

            <asp:Button ID="delete_button" runat="server" Text="Delete" CssClass="btn btn-danger" OnClick="delete_button_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="cancel_button" runat="server" Text="Cancel" CssClass="btn btn-warning" OnClick="cancel_button_Click"/>
            <p>
                <asp:HiddenField ID="hide_field" runat="server" />
            </p>
            <p>
                &nbsp;</p>
        </asp:View>

    </asp:MultiView>
    </form>
</asp:Content>
