using System;
using System.Linq;

namespace WebApplication2
{
    public partial class Login : System.Web.UI.Page
    {
        Movies_Model DB = new Movies_Model();
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var check_user = DB.Users.Where(user => user.username == username.Text && user.pass == password.Text);
            if (check_user.Count() > 0)
            {

                Session["username"] = username.Text;
                Response.Redirect("Movie.aspx");

            }
            else
            {
                error_message.Text = "Invalid user account";
            }
        }
    }
}