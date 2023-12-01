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
    public partial class login : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["login"] != null)
            {
                Session["S_username"] = Request.Cookies["login"]["C_username"].ToString().Trim();
                Session["S_fname"] = Request.Cookies["login"]["C_fname"].ToString().Trim();
                Session["S_lname"] = Request.Cookies["login"]["C_lname"].ToString().Trim();
                Session["S_email"] = Request.Cookies["login"]["C_email"].ToString().Trim();
                Session["S_pass"] = Request.Cookies["login"]["C_pass"].ToString().Trim();
                Session["S_role"] = Request.Cookies["login"]["C_role"].ToString().Trim();
            }
            /*if (Session["S_role"].Equals("admin") || Session["S_role"].Equals("user"))
            {
                Response.Redirect("profilepage.aspx");
            }*/

        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            if (!checkMemberExist())
            {
                Response.Write("<script>alert('" + "Invalid User Id/ Password" + "');</script>");
            }
            else
            {
                loginUser();
            }
        }

        bool checkMemberExist()
        {
            try
            {
                SqlConnection conn = new SqlConnection(strcon);

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from user_tbl where user_id='" + Request["username"] + "';", conn);

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

        void loginUser()
        {
            try
            {
                SqlConnection conn = new SqlConnection(strcon);

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from user_tbl where user_id='" + Request["username"] + "' and user_pass='" + Request["pass"] + "';", conn);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                SqlDataReader dr = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                
                if (!dr.HasRows)
                {
                    Response.Write("<script>alert('" + "Invalid User Id/ Password" + "');</script>");
                }
                else
                {
                    HttpCookie mycookie = new HttpCookie("login");
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('" + "Login Sucessfull" + "');</script>");
                        Session["S_username"] = dr.GetValue(0).ToString();
                        Session["S_fname"] = dr.GetValue(3).ToString();
                        Session["S_lname"] = dr.GetValue(4).ToString();
                        Session["S_email"] = dr.GetValue(1).ToString();
                        Session["S_pass"] = dr.GetValue(2).ToString();
                        Session["S_role"] = "user";
                        if (CheckBox1.Checked)
                        {
                            mycookie["C_username"] = dr.GetValue(0).ToString();
                            mycookie["C_fname"] = dr.GetValue(3).ToString();
                            mycookie["C_lname"] = dr.GetValue(4).ToString();
                            mycookie["C_email"] = dr.GetValue(1).ToString();
                            mycookie["C_pass"] = dr.GetValue(2).ToString();
                            mycookie["C_role"] = "user";
                            mycookie.Expires = DateTime.Now.AddDays(1d);
                            Response.Cookies.Add(mycookie);
                        }

                    }
                    Session.Timeout = 20;
                    //Session["S_email"] = dt.Rows[1];
                    //Session["S_fname"] = dt.Rows[3].ToString();
                    //Session["S_lname"] = dt.Rows[4].ToString();

                    //Response.Redirect(Request.UrlReferrer.ToString());
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