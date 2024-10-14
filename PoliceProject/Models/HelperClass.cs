using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PoliceProject.Models
{
    public class HelperClass
    {
        public readonly string _connectionString = ConfigurationManager.ConnectionStrings["PPDB"].ToString();

        public void ShowAlert(string message)
        {
            Page page = (Page)HttpContext.Current.Handler;
            if (page != null)
            {
                ScriptManager.RegisterStartupScript(page, page.GetType(), "alert", $"alert('{message}');", true);
            }
        }

        public int ExecuteQuery(string query)
        {
            try
            {
                SqlConnection con = new SqlConnection(_connectionString);
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                int rowsAffected = cmd.ExecuteNonQuery();
                return rowsAffected;
            }
            catch (Exception ex)
            {
                ShowAlert("Error: " + ex.Message);
                return 0;
            }
        }

        public int ExecuteQueryWithParameters(string query, SqlParameter[] parameters)
        {
            try
            {
                SqlConnection con = new SqlConnection(_connectionString);
                SqlCommand cmd = new SqlCommand(query, con);

                if (parameters != null && parameters.Length > 0)
                {
                    cmd.Parameters.AddRange(parameters);
                }

                con.Open();
                int rowsAffected = cmd.ExecuteNonQuery();
                return rowsAffected;
            }
            catch (Exception ex)
            {
                ShowAlert("Error: " + ex.Message);
                return 0;
            }
        }

        public int ExecuteQueryWithStoredProcedure(string query, SqlParameter[] parameters)
        {
            try
            {
                SqlConnection con = new SqlConnection(_connectionString);
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.StoredProcedure;

                if (parameters != null && parameters.Length > 0)
                {
                    cmd.Parameters.AddRange(parameters);
                }

                con.Open();
                int rowsAffected = cmd.ExecuteNonQuery();
                return rowsAffected;
            }
            catch (Exception ex)
            {
                ShowAlert("Error: " + ex.Message);
                return 0;
            }
        }

        public DataTable GetDataTable(string query)
        {
            try
            {
                SqlConnection con = new SqlConnection(_connectionString);
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                ShowAlert("Error: " + ex.Message);
                return null;
            }
        }

        public DataTable GetDataTableWithParameter(string query, SqlParameter[] parameters)
        {
            try
            {
                SqlConnection con = new SqlConnection(_connectionString);
                SqlCommand cmd = new SqlCommand(query, con);

                if (parameters != null && parameters.Length > 0)
                {
                    cmd.Parameters.AddRange(parameters);
                }

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                ShowAlert("Error: " + ex.Message);
                return null;
            }
        }

        public DataTable GetDataTableWithStoreProcedure(string query, SqlParameter[] parameters)
        {
            try
            {
                SqlConnection con = new SqlConnection(_connectionString);
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.StoredProcedure;

                if (parameters != null && parameters.Length > 0)
                {
                    cmd.Parameters.AddRange(parameters);
                }

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                ShowAlert("Error: " + ex.Message);
                return null;
            }
        }

        public void BindDropDownListWithQuery(DropDownList ddl, string query, string datatextfield, string datavaluefield, bool firstisall = false)
        {
            try
            {
                DataTable dt = GetDataTable(query);
                ddl.DataSource = dt;
                ddl.DataTextField = datatextfield;
                ddl.DataValueField = datavaluefield;
                ddl.DataBind();

                ddl.Items.Insert(0, new ListItem(firstisall ? "--All--" : "--Select--", "0"));
            }
            catch (Exception ex)
            {
                ShowAlert("Error: " + ex.Message);
            }
        }

        public void BindDropDownListWithStoreProcedure(DropDownList ddl, string procedurename, SqlParameter[] sqlParameters, string datatextfield, string datavaluefield, bool firstisall = false)
        {
            try
            {
                DataTable dt = GetDataTableWithStoreProcedure(procedurename, sqlParameters);
                ddl.DataSource = dt;
                ddl.DataTextField = datatextfield;
                ddl.DataValueField = datavaluefield;
                ddl.DataBind();

                ddl.Items.Insert(0, new ListItem(firstisall ? "--All--" : "--Select--", "0"));
            }
            catch (Exception ex)
            {
                ShowAlert("Error: " + ex.Message);
            }
        }

        public void BindGridViewWithQuery(GridView grd, string query)
        {
            try
            {
                DataTable dt = GetDataTable(query);
                grd.DataSource = dt;
                grd.DataBind();
            }
            catch (Exception ex)
            {
                ShowAlert("Error: " + ex.Message);
            }
        }

        public void BindGridViewWithStoreProcedure(GridView grd, string procedurename, SqlParameter[] sqlParameters)
        {
            try
            {
                DataTable dt = GetDataTableWithStoreProcedure(procedurename, sqlParameters);
                grd.DataSource = dt;
                grd.DataBind();
            }
            catch (Exception ex)
            {
                ShowAlert("Error: " + ex.Message);
            }
        }
    }
}