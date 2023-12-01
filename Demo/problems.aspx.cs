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
    public partial class problems : System.Web.UI.Page
    {
        int cnt = 0;
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["S_role"]==null || Session["S_role"].Equals("")|| Session["S_role"].Equals("user"))
            {
                hid.Visible = false;
            }
            else
            {
                hid.Visible = true;
            }
            getDate();
        }

        void getDate()
        {
            try
            {
                SqlConnection conn = new SqlConnection(strcon);

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from problem order by p_type;", conn);
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
                e.Row.Cells[0].Text = "#";
                e.Row.Cells[2].Text = "Problem Name";
                e.Row.Cells[3].Text = "Type";
                e.Row.Cells[4].Text = "Problem ID";
            }
            else if (e.Row.RowType == DataControlRowType.DataRow)
            {

                HyperLink mylink = new HyperLink();
                mylink.NavigateUrl = e.Row.Cells[2].Text.ToString().Trim();
                mylink.Text = e.Row.Cells[1].Text;
                e.Row.Cells[2].Controls.Add(mylink);
                e.Row.Cells[4].Text = e.Row.Cells[0].Text;
                e.Row.Cells[0].Text = cnt.ToString();
            }
            e.Row.Cells[1].Visible = false;
            cnt++;
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
                SqlCommand cmdd = new SqlCommand("Delete From problem where p_id='" + problemid.Text.ToString().Trim() + "' ; ", conn);
                cmdd.ExecuteNonQuery();
                Response.Write("<script>alert('" + "Problem Removed Succesfully" + "');</script>");
                getDate();
            }
        }
        bool checkexist()
        {
            SqlConnection conn = new SqlConnection(strcon);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            SqlCommand cmd = new SqlCommand("select * from problem where p_id='" + problemid.Text.ToString().Trim() + "' ; ", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                return true;
            }
            return false;
        }
    }
}