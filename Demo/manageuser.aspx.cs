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
    public partial class manageuser : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["S_role"] == null || Session["S_role"].Equals("user") || Session["S_role"].Equals(""))
            {
                Response.Write("<script>alert('" + "Access Denied" + "');</script>");
                Response.Redirect("homepage.aspx");
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            
            if (!checkMemberExist())
            {
                Response.Write("<script>alert('" + "User does not Exist" + "');</script>");
            }
            else
            {
                deleteUser();
            }
        }

        void deleteUser()
        {
            try
            {
                SqlConnection conn = new SqlConnection(strcon);

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd = new SqlCommand("delete from user_tbl where user_id='" + username.Text.Trim() + "';", conn);
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('" + "User Removed Succesfully" + "');</script>");
                GridView1.DataBind();
                username.Text = "";

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + "Exception" + "');</script>");
                
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
                SqlCommand cmd = new SqlCommand("select * from user_tbl where user_id='" + username.Text.Trim() + "';", conn);
                

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
    }
}