using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PoliceProject.Models;

namespace PoliceProject.Admin
{
    public partial class createmenu : System.Web.UI.Page
    {
        HelperClass helper = new HelperClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateParentMenuDropdown();
                PopulateRoleMenuDropdown();
                BindGridView();
            }
        }

        private void PopulateParentMenuDropdown()
        {
            string qry = "SELECT MenuId, MenuName_En FROM Admin_Menus WHERE Menu_ParentId = 0 and IsActive = 1";
            helper.BindDropDownListWithQuery(ddlParentMenu, qry, "MenuName_En", "MenuId");
        }

        private void PopulateRoleMenuDropdown()
        {
            string qry = "SELECT * FROM aspnet_Roles ORDER BY RoleName";
            helper.BindDropDownListWithQuery(ddlRole, qry, "RoleName", "RoleId");
        }

        private void BindGridView()
        {
            string qry = "SELECT am.*, rl.RoleName FROM Admin_Menus am LEFT JOIN aspnet_Roles rl ON am.RoleId = rl.RoleId;";
            helper.BindGridViewWithQuery(gvMenus, qry);
        }

        protected void btnSaveMenu_Click(object sender, EventArgs e)
        {
            string qry = "INSERT INTO Admin_Menus (MenuName_En, MenuURL, MenuOrder, Menu_ParentId, IsDropDown, RoleId, IsActive) VALUES (@MenuName_En, @MenuURL, @MenuOrder, @Menu_ParentId, @IsDropDown, @RoleId, 1)";
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@MenuName_En", txtMenuName.Text.Trim()),
                new SqlParameter("@MenuURL", txtMenuURL.Text.Trim()),
                new SqlParameter("@MenuOrder", txtMenuOrder.Text.Trim()),
                new SqlParameter("@Menu_ParentId", ddlParentMenu.SelectedValue),
                new SqlParameter("@IsDropDown", chkIsDropDown.Checked),
                new SqlParameter("@RoleId", ddlRole.SelectedValue)
            };
            int res = helper.ExecuteQueryWithParameters(qry, parameters);
            if (res > 0)
            {
                lblMessage.Text = "Menu saved successfully!";
                ClearFields();
                PopulateParentMenuDropdown();
                BindGridView();
            }
        }

        private void ClearFields()
        {
            txtMenuName.Text = "";
            txtMenuURL.Text = "";
            txtMenuOrder.Text = "";
            ddlParentMenu.SelectedIndex = 0;
            chkIsDropDown.Checked = false;
        }

        protected void gvMenus_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Edit")
            {

            }
            else if (e.CommandName == "Delete")
            {

            }
        }
    }
}