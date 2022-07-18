using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebApplication3
{
    public partial class Home1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            Label5.Text = "";
            GridView1.EditRowStyle.BackColor = System.Drawing.Color.Orange;
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridView1.DataSource= SqlDataSource1;
            GridView1.DataBind();
            Label5.Text = "";
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label UserID = GridView1.Rows[e.RowIndex].FindControl("Label4") as Label;
            TextBox Username = GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
            TextBox Password = GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
            string mycon = @"Data Source =DESKTOP-VGIPFHU\SQLEXPRESS; Initial Catalog = LoginDB; Integrated Security = True;";
            string updatedata = "Update tblUser set Username= '" + Username.Text + "' , Password= '" + Password.Text + "' where UserID=" + UserID.Text + "";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label5.Text = "Row Data has been Successfully Updated";
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            TextBox UserID = GridView1.FooterRow.FindControl("TextBox3") as TextBox;
            TextBox Username = GridView1.FooterRow.FindControl("TextBox4") as TextBox;
            TextBox Password = GridView1.FooterRow.FindControl("TextBox5") as TextBox;
            string query = "Insert into tblUser(UserID,Username,Password) values(" + UserID.Text + " , '" + Username.Text + "' , '" + Password.Text + "')";
            string mycon = @"Data Source =DESKTOP-VGIPFHU\SQLEXPRESS; Initial Catalog = LoginDB; Integrated Security = True;";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText= query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label5.Text = "New row Inserted Successfully";
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label UserID = GridView1.Rows[e.RowIndex].FindControl("Label1") as Label;
            string mycon = @"Data Source =DESKTOP-VGIPFHU\SQLEXPRESS; Initial Catalog = LoginDB; Integrated Security = True;";
            string updatedata = "delete from tblUser where UserID=" + UserID.Text;
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label5.Text = "Row Data has been Deleted Successfully";
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }
    }
}