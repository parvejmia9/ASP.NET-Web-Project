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
    public partial class addproblem : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["S_role"]==null || Session["S_role"].Equals(""))
            {
                Response.Redirect("Homepage.aspx");
            }
        }

        protected void button1_Click(object sender, EventArgs e)
        {
            applyProblem();
        }

        void applyProblem()
        {
            if (Session["S_role"].Equals("user"))
            {
                try
                {
                    SqlConnection conn = new SqlConnection(strcon);

                    if (conn.State == ConnectionState.Closed)
                    {
                        conn.Open();
                    }
                    SqlCommand cmd = new SqlCommand("insert into temp_problem(p_name,p_link,p_type,user_id,p_id)values (@pn,@pl,@pt,@un,@pd)", conn);
                    int num = getsz() + 1;
                    cmd.Parameters.AddWithValue("@pn", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@pl", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@pt", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@un", Session["S_username"].ToString().Trim());
                    cmd.Parameters.AddWithValue("@pd", num.ToString());
                    cmd.ExecuteNonQuery();
                    conn.Close();

                    Response.Write("<script>alert('Successfully Applied');</script>");
                    Response.Redirect("profilepage.aspx");

                }
                catch (Exception ex)
                {

                    Response.Write("<script>alert('" + "Exception" + "');</script>");
                }
            }
            else
            {
                try
                {
                    SqlConnection conn = new SqlConnection(strcon);

                    if (conn.State == ConnectionState.Closed)
                    {
                        conn.Open();
                    }
                    SqlCommand cmd = new SqlCommand("insert into problem(p_name,p_link,p_type,user_id)values (@pn,@pl,@pt,@un)", conn);
                    int num = getsz() + 1;
                    cmd.Parameters.AddWithValue("@pn", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@pl", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@pt", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@un", Session["S_username"].ToString().Trim());
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Response.Write("<script>alert('Successfully Applied');</script>");
                    Response.Redirect("profilepage.aspx");

                }
                catch (Exception ex)
                {

                    Response.Write("<script>alert('" + "Exception" + "');</script>");
                }
            }
        }
        int getsz()
        {
            SqlConnection conn = new SqlConnection(strcon);

            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            SqlCommand cmd = new SqlCommand("select * from temp_problem", conn);

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt.Rows.Count;

        }
        
    }
}