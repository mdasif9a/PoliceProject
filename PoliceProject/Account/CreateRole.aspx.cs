using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PoliceProject.Account
{
    public partial class CreateRole : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreateRole_Click(object sender, EventArgs e)
        {
            string roleName = txtRoleName.Text.Trim();

            if (!Roles.RoleExists(roleName))
            {
                Roles.CreateRole(roleName);
                lblMessage.Text = "Role created successfully.";
                lblError.Text = "";
            }
            else
            {
                lblError.Text = "Role already exists.";
                lblMessage.Text = "";
            }
        }
    }
}