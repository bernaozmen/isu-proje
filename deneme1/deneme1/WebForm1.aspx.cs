using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace deneme1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        //SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-Q1JP0EKN;Initial Catalog=isuform;Integrated Security=True;Multiple Active Result Sets=True;Application Name=EntityFramework");
        protected void Page_Load(object sender, EventArgs e)
        {      

        }

        protected void btn(object sender, EventArgs e)
        {
            int id = 1;
            SqlConnection conn;
            string ConnectionString = "data source=LAPTOP-Q1JP0EKN;initial catalog=isuform;integrated security=True;MultipleActiveResultSets=True;App=EntityFramework&quot;";
            conn = new SqlConnection(ConnectionString);

            conn.Open();
            SqlCommand comm = new SqlCommand("insert into [isuform].[dbo].[user] (id, name, email, subject, message) values(@id, @name, @email, @subject, @message)", conn);
            comm.Parameters.AddWithValue("@id", id++);
            comm.Parameters.AddWithValue("@name", Request.Form["name"]);
            comm.Parameters.AddWithValue("@email", Request.Form["email"]);
            comm.Parameters.AddWithValue("@subject", Request.Form["subject"]);
            comm.Parameters.AddWithValue("@message", Request.Form["message"]);
             
            comm.ExecuteNonQuery();
            conn.Close();             
            }
        }
}