using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Edit : System.Web.UI.Page
    {
        Movies_Model DB = new Movies_Model();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                Movie_ID.Text = Request.QueryString["id"];
                int id;
                if (int.TryParse(Movie_ID.Text, out id))
                {
                    var moviess = DB.Movies_table.FirstOrDefault(movie => movie.Movie_id == id);
                    if (moviess != null)
                    {
                        Movie_Name.Text = moviess.Movie_name;
                    }
                    else
                    {
                    }
                }
                else
                {

                }
                var movies = DB.Movies_table.FirstOrDefault(movie => movie.Movie_id == id);
                if (movies != null)
                {
                    Movie_Name.Text = movies.Movie_name;
                    production_year.Text = movies.Production_Year.ToString();
                    director_name.Text = movies.Director_name;
                    movie_duration.Text = movies.Movie_duration_in_hours.ToString();                }
                else
                {
                }
                if (Session["username"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                }
            }
        }

        protected void cancel_movie_Click(object sender, EventArgs e)
        {
            Response.Redirect("Movie.aspx");
        }

        protected void edit_movie_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                int m_id = int.Parse(Request.QueryString["id"]);
                var edit_movies = DB.Movies_table.Find(m_id);
                edit_movies.Movie_name = Movie_Name.Text;
                edit_movies.Production_Year = int.Parse(production_year.Text);
                edit_movies.Director_name = director_name.Text;
                edit_movies.Movie_duration_in_hours = int.Parse(movie_duration.Text);
                DB.SaveChanges();
                Response.Redirect("Edit.aspx");

            }

        }
        protected void redundant_record(object source, ServerValidateEventArgs args)
        {
            var validate_input = DB.Movies_table.FirstOrDefault(movie => movie.Movie_name == Movie_Name.Text);

            if (validate_input == null)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }

        }
    }
}