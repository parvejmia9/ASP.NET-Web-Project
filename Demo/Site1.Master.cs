using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["login"] != null)
            {
                Session["S_username"] =  Request.Cookies["login"]["C_username"].ToString().Trim();
                Session["S_fname"] = Request.Cookies["login"]["C_fname"].ToString().Trim();
                Session["S_lname"] = Request.Cookies["login"]["C_lname"].ToString().Trim();
                Session["S_email"] = Request.Cookies["login"]["C_email"].ToString().Trim();
                Session["S_pass"] = Request.Cookies["login"]["C_pass"].ToString().Trim();
                Session["S_role"] = Request.Cookies["login"]["C_role"].ToString().Trim();

            }
            try
            {
                if (Session["S_role"] == null)
                {
                    LinkButton1.Visible = true;  //login
                    LinkButton2.Visible = false; //signUp
                    LinkButton3.Visible = false; // logout
                    LinkButton4.Visible = false; //hello user
                    LinkButton5.Visible = true; //prac or learn
                }
                else if (Session["S_role"].Equals("user"))
                {
                    LinkButton1.Visible = false;  //login
                    LinkButton2.Visible = false; //signUp
                    LinkButton3.Visible = true; // logout
                    LinkButton4.Visible = true; //hello user
                    LinkButton4.Text = "Hello, " + Session["S_fname"].ToString();
                    LinkButton5.Visible = true; //prac or learn
                }
                else if (Session["S_role"].Equals("admin"))
                {
                    LinkButton1.Visible = false;  //login
                    LinkButton2.Visible = false; //signUp
                    LinkButton3.Visible = true; // logout
                    LinkButton4.Visible = true; //hello user
                    LinkButton4.Text = "Hello, Admin";
                    LinkButton5.Visible = true; //prac or learn
                    LinkButton6.Visible = true; //manage users
                    LinkButton7.Visible = true; //Pending Problem
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("pracorlearn.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {

            Session["S_username"] = "";
            Session["S_fname"] = "";
            Session["S_fullname"] = "";
            Session["S_role"] = "";
            LinkButton1.Visible = true;  //login
            LinkButton2.Visible = false; //signUp
            LinkButton3.Visible = false; // logout
            LinkButton4.Visible = false; //hello user
            LinkButton5.Visible = true; //prac or learn


            HttpCookie mycookie = new HttpCookie("login");
            mycookie.Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(mycookie);
            Response.Redirect("homepage.aspx");
        }

        protected void LinkButton4_Click1(object sender, EventArgs e)
        {
            Response.Redirect("profilepage.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("manageuser.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("pendingproblem.aspx");
        }
    }
}