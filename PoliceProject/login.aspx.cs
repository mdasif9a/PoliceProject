using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using PoliceProject.Models;

namespace PoliceProject
{
    public partial class login : System.Web.UI.Page
    {
        private readonly HelperClass helper = new HelperClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate1(object sender, AuthenticateEventArgs e)
        {
            if (Membership.ValidateUser(Login1.UserName, Login1.Password))
            {
                e.Authenticated = true;
                FormsAuthentication.RedirectFromLoginPage(Login1.UserName, false);
            }
            else
            {
                e.Authenticated = false;
                helper.ShowAlert("Invalid Username or Password!");
            }
        }
    }
}