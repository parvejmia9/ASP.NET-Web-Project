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
    public partial class Labtest : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void insrtbtn_Click(object sender, EventArgs e)
        {
            string idd = Request["id"];
            string name = Request["name"];
            string dept= Request["dept"];
            try
            {
                SqlConnection conn = new SqlConnection(strcon);

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into Students(id,name,dept)values (@un,@em,@ps)", conn);
                cmd.Parameters.AddWithValue("@un", idd);
                cmd.Parameters.AddWithValue("@em", name);
                cmd.Parameters.AddWithValue("@ps", dept);
                cmd.ExecuteNonQuery();
                conn.Close();

                Response.Write("<script>alert('Sucesfully Added');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + "Exception" + "');</script>");
            }

        }
    }
}