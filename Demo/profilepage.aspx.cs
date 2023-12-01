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
    public partial class profilepage : System.Web.UI.Page
    {
        int cnt = 0;
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            

            try
            {
                if (Session["S_role"] == null || Session["S_role"].Equals(""))
                {
                    Response.Redirect("Homepage.aspx");
                }
                else
                {
                    if (!IsPostBack)
                    {
                        fname.Text = Session["S_fname"].ToString().Trim();
                        lname.Text = Session["S_lname"].ToString().Trim();
                        email.Text = Session["S_email"].ToString().Trim();
                        string fullname = Session["S_fname"].ToString() + " " + Session["S_lname"].ToString();
                        l_fullname.Text = fullname;
                        l_usename.Text = Session["S_username"].ToString();

                    }
                    cnt = 0;
                    getuserdate();

                }
            }
            catch (Exception ex)
            {

            }

        }
        
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            string npass = newpass.Text.Trim();
            string opass = oldpass.Text.Trim();
            if (newpass.Text.Trim() == "")
            {
                opass = Session["S_pass"].ToString().Trim();
                npass = opass;

            }

            if (Session["S_role"].Equals("user"))
            {
                try
                {
                    SqlConnection conn = new SqlConnection(strcon);

                    if (conn.State == ConnectionState.Closed)
                    {
                        conn.Open();
                    }
                    SqlCommand cmd = new SqlCommand("select * from user_tbl where user_id='" + Session["S_username"].ToString().Trim() + "' and user_pass='" + opass + "';", conn);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    SqlDataReader dr = cmd.ExecuteReader();
                    DataTable dt = new DataTable();
                    if (!dr.HasRows)
                    {
                        Response.Write("<script>alert('" + "Invalid Password" + "');</script>");
                    }
                    else
                    {
                        conn.Close();
                        string ufname = fname.Text.ToString().Trim();
                        string ulname = lname.Text.ToString().Trim();
                        string uemail = email.Text.ToString().Trim();
                        if (conn.State == ConnectionState.Closed)
                        {
                            conn.Open();
                        }
                        /*cmd = new SqlCommand("UPDATE user_tbl SET user_email ='"+ uemail +"', user_pass = '"+ npass +"', user_fname='"+ ufname +"', user_lname='"+ulname+"' WHERE user_id='"+ Session["S_username"].ToString().Trim()+"'; ");
                        cmd.ExecuteNonQuery();*/
                        SqlCommand cmd3 = new SqlCommand("delete from user_tbl where user_id='" + Session["S_username"].ToString().Trim() + "'", conn);
                        cmd3.ExecuteNonQuery();
                        conn.Close();
                        if (conn.State == ConnectionState.Closed)
                        {
                            conn.Open();
                        }
                        SqlCommand cmd2 = new SqlCommand("insert into user_tbl(user_id,user_email,user_pass,user_fname,user_lname)values (@un,@em,@ps,@fn,@ln)", conn);
                        cmd2.Parameters.AddWithValue("@un", Session["S_username"].ToString().Trim());
                        cmd2.Parameters.AddWithValue("@em", uemail);
                        cmd2.Parameters.AddWithValue("@ps", npass);
                        cmd2.Parameters.AddWithValue("@fn", ufname);
                        cmd2.Parameters.AddWithValue("@ln", ulname);
                        cmd2.ExecuteNonQuery();
                        Session["S_fname"] = ufname;
                        Session["S_lname"] = ulname;
                        Session["S_email"] = uemail;
                        Session["S_pass"] = npass;
                       conn.Close();

                        Response.Write("<script>alert('" + "Update Successfull" + "');</script>");
                        //Response.Redirect("profilepage.aspx");
                    }
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
                    SqlCommand cmd = new SqlCommand("select * from admin where admin_id='" + Session["S_username"].ToString().Trim() + "' and password='" + opass + "';", conn);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    SqlDataReader dr = cmd.ExecuteReader();
                    DataTable dt = new DataTable();
                    if (!dr.HasRows)
                    {
                        Response.Write("<script>alert('" + "Invalid Password" + "');</script>");
                    }
                    else
                    {
                        conn.Close();
                        string ufname = fname.Text.ToString().Trim();
                        string ulname = lname.Text.ToString().Trim();
                        string uemail = email.Text.ToString().Trim();
                        if (conn.State == ConnectionState.Closed)
                        {
                            conn.Open();
                        }
                        /*cmd = new SqlCommand("UPDATE user_tbl SET user_email ='"+ uemail +"', user_pass = '"+ npass +"', user_fname='"+ ufname +"', user_lname='"+ulname+"' WHERE user_id='"+ Session["S_username"].ToString().Trim()+"'; ");
                        cmd.ExecuteNonQuery();*/
                        SqlCommand cmd3 = new SqlCommand("delete from admin where admin_id='" + Session["S_username"].ToString().Trim() + "'", conn);
                        //Response.Write("<script>alert('" + Session["S_username"].ToString().Trim() + "');</script>");
                        cmd3.ExecuteNonQuery();
                        
                        conn.Close();
                        if (conn.State == ConnectionState.Closed)
                        {
                            conn.Open();
                        }
                        SqlCommand cmd2 = new SqlCommand("insert into admin(admin_id,email,password,fname,lname)values (@un,@em,@ps,@fn,@ln)", conn);
                        cmd2.Parameters.AddWithValue("@un", Session["S_username"].ToString().Trim());
                        cmd2.Parameters.AddWithValue("@em", uemail);
                        cmd2.Parameters.AddWithValue("@ps", npass);
                        cmd2.Parameters.AddWithValue("@fn", ufname);
                        cmd2.Parameters.AddWithValue("@ln", ulname);
                        cmd2.ExecuteNonQuery();
                        conn.Close();

                        Response.Write("<script>alert('" + "Update Successfull" + "');</script>");
                        //Response.Redirect("profilepage.aspx");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + "Exception" + "');</script>");

                }
            }
         }
        
        void getuserdate()
        {
            try
            {
                SqlConnection conn = new SqlConnection(strcon);

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from problem where user_id='" + Session["S_username"].ToString().Trim() + "';", conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                conn.Close();
                /*if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmdd = new SqlCommand("select * from temp_problem where user_id='" + Session["S_username"].ToString().Trim() + "';", conn);
                SqlDataAdapter daa = new SqlDataAdapter(cmdd);
                DataTable dtt = new DataTable();
                daa.Fill(dtt);
                GridView2.DataSource = dtt;
                GridView2.DataBind();
                conn.Close();*/
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
                e.Row.Cells[2].Text = "Problem Name";
                e.Row.Cells[3].Text = "Type";
            }
            else if (e.Row.RowType == DataControlRowType.DataRow)
            {
                
                HyperLink mylink = new HyperLink();
                mylink.NavigateUrl = e.Row.Cells[2].Text.ToString().Trim();
                mylink.Text = e.Row.Cells[1].Text;
                e.Row.Cells[2].Controls.Add(mylink);
            }
            e.Row.Cells[4].Visible = false;
            e.Row.Cells[1].Visible = false;
        }

        protected void add_article_Click(object sender, EventArgs e)
        {
            Response.Redirect("addproblem.aspx");
        }

        /*protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
           
            string idd = cnt.ToString();
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[0].Text = "#";
                e.Row.Cells[1].Text = "Problem Name";
                e.Row.Cells[2].Text = "Type";
            }
            else if (e.Row.RowType == DataControlRowType.DataRow)
            {
                
                HyperLink mylink = new HyperLink();
                mylink.NavigateUrl = e.Row.Cells[1].Text.ToString().Trim();
                mylink.Text = e.Row.Cells[0].Text;
                e.Row.Cells[1].Controls.Add(mylink);
                e.Row.Cells[0].Text = idd;
            }
            e.Row.Cells[3].Visible = false;
            cnt++;
        }*/
    }
}