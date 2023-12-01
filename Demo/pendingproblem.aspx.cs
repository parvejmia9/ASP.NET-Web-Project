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
    public partial class pendingproblem : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["S_role"] == null || Session["S_role"].Equals("user") || Session["S_role"].Equals(""))
            {
                Response.Write("<script>alert('" + "Access Denied" + "');</script>");
                Response.Redirect("homepage.aspx");
            }
            GridView1.DataBind();
            GetData();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!checkexist())
            {
                Response.Write("<script>alert('" + "Problem Id Not Found" + "');</script>");

            }
            else
            {
                SqlConnection conn = new SqlConnection(strcon);

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                //SqlCommand cmd = new SqlCommand("select * from temp_problem where p_id='"+Button1.Text.ToString().Trim()+"';", conn);
                SqlCommand cmd = new SqlCommand("INSERT INTO problem (p_name, p_link, p_type,user_id) SELECT p_name, p_link, p_type,user_id FROM temp_problem where p_id='" + problemid.Text.ToString().Trim() + "' ; ", conn);
                cmd.ExecuteNonQuery();
                conn.Close();
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmdd = new SqlCommand("Delete From temp_problem where p_id='" + problemid.Text.ToString().Trim() + "' ; ", conn);
                cmdd.ExecuteNonQuery();
                Response.Write("<script>alert('" + "Problem Added Succesfully" + "');</script>");
                GetData();
            }
            

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (!checkexist())
            {
                Response.Write("<script>alert('" + "Problem Id Not Found" + "');</script>");

            }
            else
            {
                SqlConnection conn = new SqlConnection(strcon);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmdd = new SqlCommand("Delete From temp_problem where p_id='" + problemid.Text.ToString().Trim() + "' ; ", conn);
                cmdd.ExecuteNonQuery();
                Response.Write("<script>alert('" + "Problem Removed Succesfully" + "');</script>");
                GetData();
            }

        }

        bool checkexist()
        {
            SqlConnection conn = new SqlConnection(strcon);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            SqlCommand cmd = new SqlCommand("select * from temp_problem where p_id='" + problemid.Text.ToString().Trim() + "' ; ", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                return true;
            }
            return false;
        }
        void GetData()
        {
            try
            {
                SqlConnection conn = new SqlConnection(strcon);

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from temp_problem;", conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                conn.Close();
                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + "Exception" + "');</script>");

            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[0].Text = "Problem ID";
                e.Row.Cells[1].Text = "Problem Name";
                e.Row.Cells[2].Text = "Type";
                e.Row.Cells[3].Text = "User ID";
            }
            else if (e.Row.RowType == DataControlRowType.DataRow)
            {

                HyperLink mylink = new HyperLink();
                mylink.NavigateUrl = e.Row.Cells[1].Text.ToString().Trim();
                mylink.Text = e.Row.Cells[0].Text;
                e.Row.Cells[1].Controls.Add(mylink);
                e.Row.Cells[0].Text = e.Row.Cells[4].Text.ToString().Trim();
            }
            e.Row.Cells[4].Visible = false;
        }
    }
}