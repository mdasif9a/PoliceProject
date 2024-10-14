using PoliceProject.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PoliceProject.Admin
{
    public partial class AdminMaster : System.Web.UI.MasterPage
    {
        private readonly HelperClass helper = new HelperClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindMenu();
            }
        }

        private void BindMenu()
        {
            string clname = "MenuName_En";
            DataTable dt = new DataTable();
            DataTable dt2 = new DataTable();
            dt = helper.GetDataTable("select * from Admin_Menus where Menu_ParentId = 0 and IsActive = 1 order by MenuOrder");
            MenuM.Text = "";

            foreach (DataRow item in dt.Rows)
            {
                if ((bool)item["IsDropDown"])
                {
                    MenuM.Text += "<li class='nav-item'><a href='javascript:void(0);' class='nav-link'><p class='ml-3'>" + item[clname] + "<i class='right fas fa-angle-left'></i></p></a><ul class='nav nav-treeview'>";

                    dt2 = helper.GetDataTable("select * from Admin_Menus where Menu_ParentId = " + item["MenuId"] + " and IsActive = 1 order by MenuOrder");
                    foreach (DataRow item2 in dt2.Rows)
                    {
                        MenuM.Text += "<li class='nav-item'><a href='" + item2["MenuURL"] + "' class='nav-link'><p class='ml-2'>" + item2[clname] + "</p></a></li>";
                    }
                    MenuM.Text += "</ul></li>";
                }
                else
                {
                    MenuM.Text += "<li class='nav-item'><a href='" + item["MenuURL"] + "' class='nav-link'><p class='ml-3'>" + item[clname] + "</p></a></li>";
                }
            }
        }

    }
}