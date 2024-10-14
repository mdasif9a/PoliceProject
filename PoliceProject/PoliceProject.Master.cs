using PoliceProject.Models;
using System;
using System.Data;
using System.Globalization;
using System.Text.RegularExpressions;
using System.Threading;

namespace PoliceProject
{
    public partial class PoliceProjectM : System.Web.UI.MasterPage
    {
        private readonly HelperClass helper = new HelperClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["lang"] == null)
            {
                Session["lang"] = "hi";
            }
            if (!IsPostBack)
            {
                btn_english.Visible = false;
                btn_hindi.Visible = false;
                SetLanguage("hi");
            }
        }

        private void BindMenu()
        {
            string clname = Session["lang"].ToString() == "en" ? "MenuName_En" : "MenuName_Hi";
            DataTable dt = new DataTable();
            DataTable dt2 = new DataTable();
            dt = helper.GetDataTable("select * from M_Menus where Menu_ParentId = 0 and IsActive = 1 order by MenuOrder");
            MenuM.Text = "";
            foreach (DataRow item in dt.Rows)
            {
                if ((bool)item["IsDropDown"])
                {
                    MenuM.Text += "<li class='dropdown'><a href='javascript:void(0)'><span>" + item[clname] + "</span> <i class='bi bi-chevron-down'></i></a><ul>";
                    dt2 = helper.GetDataTable("select * from M_Menus where Menu_ParentId = " + item["MenuId"] + " and IsActive = 1 order by MenuOrder");
                    foreach (DataRow item2 in dt2.Rows)
                    {
                        MenuM.Text += "<li><a class='nav-link' href='" + item2["MenuURL"] + "'>" + item2[clname] + "</a></li>";
                    }
                    MenuM.Text += "</ul></li>";
                }
                else
                {
                    MenuM.Text += "<li><a class='nav-link' href='" + item["MenuURL"] + "'>" + item[clname] + "</a></li>";
                }
            }
        }

        private void SetLanguage(string culture)
        {
            Session["lang"] = culture;
            Thread.CurrentThread.CurrentCulture = new CultureInfo(culture);
            Thread.CurrentThread.CurrentUICulture = new CultureInfo(culture);
            BindMenu();
        }


        protected void btn_hindi_Click(object sender, EventArgs e)
        {
            btn_hindi.Visible = false;
            btn_english.Visible = true;
            SetLanguage("hi");
        }

        protected void btn_english_Click(object sender, EventArgs e)
        {
            btn_english.Visible = false;
            btn_hindi.Visible = true;
            SetLanguage("en");
        }
    }
}