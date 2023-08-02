using System;
using System.Linq;
using System.Net;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.UI.WebControls;

namespace WebApplication2
{

    public partial class WebForm2 : System.Web.UI.Page
    {

        Movies_Model DB = new Movies_Model();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                user_account.Text = $" Welcome back : {Session["username"]}";
            }
        }

        protected void ShowAllMovies(object sender, EventArgs e)
        {

            Movies_table.DataSource = DB.Movies_table.ToList();
            Movies_table.DataBind();

        }

        protected void Search_Movie(object sender, EventArgs e)
        {

            var filter_movie = DB.Movies_table.Where(m => m.Movie_name.StartsWith(Search_Box.Text));
            if (filter_movie.Count() > 0)
            {
                Movies_table.DataSource = filter_movie.ToList();
                Movies_table.DataBind();
                Movies_table.Visible = true;
                error_label.Text = "";

            }
            else
            {
                error_label.Text = "No data was found";
                Movies_table.Visible = false;
            }
        }

        protected void delete_row(object sender, GridViewDeleteEventArgs e)
        {
            movie_name.Text = Movies_table.Rows[e.RowIndex].Cells[3].Text;
            hide_field.Value = Movies_table.Rows[e.RowIndex].Cells[2].Text;
            MultiView1.ActiveViewIndex = 1;
        }

        protected void cancel_button_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void delete_button_Click(object sender, EventArgs e)
        {
            int hidden_field = int.Parse(hide_field.Value);
            var delete_movie = DB.Movies_table.Find(hidden_field);
            DB.Movies_table.Remove(delete_movie);
            DB.SaveChanges();
            Response.Redirect("Movie.aspx");
            MultiView1.ActiveViewIndex = 0;

        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            LogoutUser();
            Response.Redirect("~/Login.aspx");
        }

        private void LogoutUser()
        {
            System.Web.Security.FormsAuthentication.SignOut();
            HttpCookie customCookie = new HttpCookie("test", "");
            customCookie.Expires = DateTime.Now.AddYears(-1);
            Response.Cookies.Add(customCookie);
            Session.Clear();
            Session.Abandon();
        }
        protected void row(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[2].Text = "Movie ID";
                e.Row.Cells[3].Text = "Movie Name";
                e.Row.Cells[4].Text = "Production Year";
                e.Row.Cells[5].Text = "Director Name";
                e.Row.Cells[6].Text = "Movie Duration in Hours";
            }
        }

    }
}




