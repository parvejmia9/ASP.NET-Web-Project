using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class adminlogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.Cookies["login"] != null)
            {
                Session["S_username"] = Request.Cookies["login"]["C_username"].ToString().Trim();
                Session["S_fname"] = Request.Cookies["login"]["C_fname"].ToString().Trim();
                Session["S_lname"] = Request.Cookies["login"]["C_lname"].ToString().Trim();
                Session["S_email"] = Request.Cookies["login"]["C_email"].ToString().Trim();
                Session["S_pass"] = Request.Cookies["login"]["C_pass"].ToString().Trim();
                Session["S_role"] = Request.Cookies["login"]["C_role"].ToString().Trim();
            }
            if (Session["S_role"].Equals("adimn")|| Session["S_role"].Equals("user"))
            {
                Response.Redirect("profilepage.aspx");
            }
        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            if (!checkAdminExist())
            {
                Response.Write("<script>alert('" + "Invalid User Id/ Password" + "');</script>");
            }
            else
            {
                loginAdmin();
            }
        }

        bool checkAdminExist()
        {
            try
            {
                SqlConnection conn = new SqlConnection(strcon);

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from admin where admin_id='" + Request["username"] + "';", conn);

                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    return true;
                }
                return false;
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + "Exception" + "');</script>");
                return false;
            }
        }
        void loginAdmin()
        {
            try
            {
                SqlConnection conn = new SqlConnection(strcon);

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from admin where admin_id='" + Request["username"] + "' and password='" + Request["pass"] + "';", conn);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                SqlDataReader dr = cmd.ExecuteReader();
                DataTable dt = new DataTable();

                if (!dr.HasRows)
                {
                    Response.Write("<script>alert('" + "Invalid User Id/ Password" + "');</script>");
                }
                else
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('" + "Login Sucessfull" + "');</script>");
                        Session["S_username"] = dr.GetValue(0).ToString();
                        Session["S_fname"] = dr.GetValue(3).ToString();
                        Session["S_lname"] = dr.GetValue(4).ToString();
                        Session["S_email"] = dr.GetValue(1).ToString();
                        Session["S_pass"] = dr.GetValue(2).ToString();
                        Session["S_role"] = "admin";

                    }

                    //Session["S_email"] = dt.Rows[1];
                    //Session["S_fname"] = dt.Rows[3].ToString();
                    //Session["S_lname"] = dt.Rows[4].ToString();


                    Response.Redirect("homepage.aspx");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + "Exception" + "');</script>");

            }

        }
    }
}