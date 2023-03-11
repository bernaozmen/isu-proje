using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace deneme1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection conn;
        string ConnectionString = "data source=LAPTOP-Q1JP0EKN;initial catalog=isuform;integrated security=True;MultipleActiveResultSets=True;App=EntityFramework&quot;";     

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Load_Record();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConnectionString);
            int id = 1;
            
            conn.Open();
            SqlCommand comm = new SqlCommand("insert into [isuform].[dbo].[user] (id, name, email, subject, message) values(@id, @name, @email, @subject, @message)", conn);
            comm.Parameters.AddWithValue("@id", id++);
            comm.Parameters.AddWithValue("@name", Request.Form["name"]);
            comm.Parameters.AddWithValue("@email", Request.Form["email"]);
            comm.Parameters.AddWithValue("@subject", Request.Form["subject"]);
            comm.Parameters.AddWithValue("@message", Request.Form["message"]);

            comm.ExecuteNonQuery();
            conn.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);
        }

        void Load_Record()
        {
            conn = new SqlConnection(ConnectionString);
            SqlCommand comm = new SqlCommand("select * from [isuform].[dbo].[user]", conn);
            SqlDataAdapter adapter = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConnectionString);         
            conn.Open();
            SqlCommand comm = new SqlCommand("update [isuform].[dbo].[user] set id = @id,name = @name,email = @email,subject = @subject,message = @message", conn);
            comm.Parameters.AddWithValue("@id", Int16.Parse(id.Text));
            comm.Parameters.AddWithValue("@name", name.Text);
            comm.Parameters.AddWithValue("@email", email.Text);
            comm.Parameters.AddWithValue("@subject", subject.Text);
            comm.Parameters.AddWithValue("@message", message.Text);
            comm.ExecuteNonQuery();
            conn.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConnectionString);
            conn.Open();
            SqlCommand comm = new SqlCommand("delete [isuform].[dbo].[user] where id = @id", conn);
            comm.Parameters.AddWithValue("@id", Int16.Parse(id.Text));
            comm.Parameters.AddWithValue("@name", name.Text);
            comm.Parameters.AddWithValue("@email", email.Text);
            comm.Parameters.AddWithValue("@subject", subject.Text);
            comm.Parameters.AddWithValue("@message", message.Text);
            comm.ExecuteNonQuery();
            conn.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted');", true);
        }
    }
}