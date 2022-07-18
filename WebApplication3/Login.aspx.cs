using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnlogin_Click(object sender, EventArgs e)


        { 
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;Initial Catalog=LoginDB; Integrated Security = True;"))
            {   
                sqlCon.Open();
                string querry = "SELECT COUNT(1) FROM tblUser WHERE username=@username AND password=@password";
                SqlCommand sqlCmd = new SqlCommand(querry, sqlCon);
                sqlCmd.Parameters.AddWithValue("@username", TextUserName.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@password", TextPassword.Text.Trim());
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
                if (count == 1)
                {
                    Session["Username"] = TextUserName.Text.Trim();
                    Response.Redirect("/Home1.aspx");
                }
                else
                {
                    Label3.Text = "Login Failed";
                }
                 
            
            }
            
        }
    }
}