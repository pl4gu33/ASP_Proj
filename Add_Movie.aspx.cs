using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Add_Movie : System.Web.UI.Page
    {
        readonly Movies_Model DB = new Movies_Model();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
            }
        }

        protected void add_movie_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Movies_table movie = new Movies_table
                {
                    Movie_name = Movie_Name.Text,
                    Production_Year = int.Parse(production_year.Text),
                    Director_name = director_name.Text,
                    Movie_duration_in_hours = int.Parse(movie_duration.Text)
                };
                DB.Movies_table.Add(movie);
                DB.SaveChanges();
                Response.Redirect("add_movie.aspx");
            }
        }

        protected void cancel_movie_Click(object sender, EventArgs e)
        {
            Response.Redirect("Movie.aspx");
        }

        protected void validate_redundant_record(object source, ServerValidateEventArgs args)
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