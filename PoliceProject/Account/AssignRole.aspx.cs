using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PoliceProject.Account
{
    public partial class AssignRole : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindUsers();
                BindRoles();
                BindUsersRolesGrid();
            }
        }

        private void BindUsers()
        {
            ddlUsers.DataSource = Membership.GetAllUsers();
            ddlUsers.DataTextField = "UserName";
            ddlUsers.DataValueField = "UserName";
            ddlUsers.DataBind();
        }

        private void BindRoles()
        {
            ddlRoles.DataSource = Roles.GetAllRoles();
            ddlRoles.DataBind();
        }

        private void BindUsersRolesGrid()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("UserName");
            dt.Columns.Add("RoleName");

            foreach (MembershipUser user in Membership.GetAllUsers())
            {
                string[] roles = Roles.GetRolesForUser(user.UserName);
                foreach (string role in roles)
                {
                    DataRow dr = dt.NewRow();
                    dr["UserName"] = user.UserName;
                    dr["RoleName"] = role;
                    dt.Rows.Add(dr);
                }
            }

            gvUsersRoles.DataSource = dt;
            gvUsersRoles.DataBind();
        }

        protected void btnAssignRole_Click(object sender, EventArgs e)
        {
            string selectedUser = ddlUsers.SelectedValue;
            string selectedRole = ddlRoles.SelectedValue;

            if (!Roles.IsUserInRole(selectedUser, selectedRole))
            {
                Roles.AddUserToRole(selectedUser, selectedRole);
                lblMessage.Text = $"Role '{selectedRole}' assigned to user '{selectedUser}' successfully.";
                lblError.Text = "";
            }
            else
            {
                lblError.Text = "User is already in the selected role.";
                lblMessage.Text = "";
            }

            BindUsersRolesGrid();
        }

        protected void gvUsersRoles_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "RemoveRole")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                string userName = gvUsersRoles.Rows[rowIndex].Cells[0].Text;
                string roleName = gvUsersRoles.Rows[rowIndex].Cells[1].Text;

                if (Roles.IsUserInRole(userName, roleName))
                {
                    Roles.RemoveUserFromRole(userName, roleName);
                    lblMessage.Text = $"Role '{roleName}' removed from user '{userName}' successfully.";
                    lblError.Text = "";
                }

                BindUsersRolesGrid();
            }
        }
    }
}