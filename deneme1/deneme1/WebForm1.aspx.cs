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
        protected void Page_Load(object sender, EventArgs e)
        {      

        }

        protected void btn(object sender, EventArgs e)
        {
            int id = 1;
            string email2 = email.Value;
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
            
            sendMsg(email2);
            clear();
            comm.ExecuteNonQuery();
            conn.Close();             
        }

        void clear()
        {
            email.Value = string.Empty;
            email.Focus();
        }

        void ShowMessage(string msg)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('" + msg + "');</script>");
        }


        //Send Mail
        private void sendMsg(string email)
        {         
            string to = email;
            string from = "190701132@stu.istinye.edu.tr";
            MailMessage message = new MailMessage(from, to);
            message.Subject = "Auto Response Email";
            message.Body = "Hello Thanks for Registering..."; ;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            System.Net.NetworkCredential basicCredential = new System.Net.NetworkCredential("190701132@stu.istinye.edu.tr", "Password");
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential;

            try
            {
                client.Send(message);              
            }
            catch (Exception ex)
            {
                //ShowMessage(ex.Message);
            }
        }
    }
}