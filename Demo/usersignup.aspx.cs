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
    public partial class usersignup : System.Web.UI.Page
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
            if (Session["S_role"].Equals("adimn") || Session["S_role"].Equals("user"))
            {
                Response.Write("<script>alert('" + "Please Log Out First" + "');</script>");
                Response.Redirect("profilepage.aspx");
            }
        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            string ps = Request["pass"];
            string cps = Request["conpass"];
            if (ps != cps)
            {
                //ScriptManager.RegisterStartupScript(this, GetType(), "AnyValue", "showAlert();", true);
                Response.Write("<script>alert('" + "Password and Confirm password did not matched" + "');</script>");
                ScriptManager.RegisterStartupScript(this, GetType(), "AnyValue", "showAlert();", true);
            }
            else if (checkMemberExist())
            {
                Response.Write("<script>alert('" + "User Id already exist try another" + "');</script>");
            }
            else
            {
                signUpNewUser();
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
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + "Exception" + "');</script>");
                return false;
            }
        }

        // signUp
        void signUpNewUser()
        {
            try
            {
                SqlConnection conn = new SqlConnection(strcon);

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into user_tbl(user_id,user_email,user_pass,user_fname,user_lname)values (@un,@em,@ps,@fn,@ln)", conn);
                cmd.Parameters.AddWithValue("@un", Request["username"]);
                cmd.Parameters.AddWithValue("@em", Request["email"]);
                cmd.Parameters.AddWithValue("@ps", Request["pass"]);
                cmd.Parameters.AddWithValue("@fn", Request["fname"]);
                cmd.Parameters.AddWithValue("@ln", Request["lname"]);
                cmd.ExecuteNonQuery();
                conn.Close();

                Response.Write("<script>alert('Sign Up Succecful. Go to login');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + "Exception" + "');</script>");
            }
        }
    }
}