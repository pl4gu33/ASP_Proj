using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class SignUp : System.Web.UI.Page
    {
        Movies_Model DB = new Movies_Model();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Create_account(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                User user = new User
                {
                    username = username.Text,
                    pass = password.Text,
                    confirm_pass = confirm_pass.Text,
                    email = email.Text,
                };

                DB.Users.Add(user);
                DB.SaveChanges();
                Session["username"] = username.Text;
                Response.Redirect("home.aspx");
            }

        }

        protected void validate_redundant_fields(object source, ServerValidateEventArgs args)
        {
            var validate_username = DB.Users.FirstOrDefault(user => user.username == username.Text);
            if (validate_username == null)
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