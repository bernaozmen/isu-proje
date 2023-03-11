using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace deneme1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {     

            /*SqlConnection conn;
            string ConnectionString = "data source=LAPTOP-Q1JP0EKN;initial catalog=isuform;integrated security=True;MultipleActiveResultSets=True;App=EntityFramework&quot;";
            conn = new SqlConnection(ConnectionString);

            conn.Open();
            
            SqlCommand cmd = new SqlCommand("select * from UserInformation where UserName =@username and Password=@password", conn);
            cmd.Parameters.AddWithValue("@username", txtUserName.Text);
            cmd.Parameters.AddWithValue("@password", txtPWD.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("Details.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
            }
            */
        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            string userName = "admin";
            string password = "1234";

            //Response.Redirect("WebForm3.aspx");


            if (txtAd.Text == userName && txtSifre.Text == password)

            {
                Response.Redirect("WebForm3.aspx");
            }

            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
            }

        }
    }
}