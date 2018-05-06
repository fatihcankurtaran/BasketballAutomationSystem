using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//contain classes for accessing and managing data from diverse sources 
using System.Configuration;//contains the types that provide the programming model for handling configuration data
using System.Data.SqlClient; //Data Provider for SQL Server
namespace Basketball1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string uname = TextBox1.Text;
            string pwd = TextBox2.Text;
            string getu;
             
            if ( uname != "" && pwd != "")
            {
                SqlDataReader dr;
                SqlDataReader Rd;
                string connectionString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();
                
                if (connection.State == ConnectionState.Open)
                {   
                   
                    SqlCommand cmd = new SqlCommand("SELECT pword FROM dbo.requser where Username =N'"+ uname+"' and pword =N'" + pwd + "'", connection);
                    dr = cmd.ExecuteReader();
                    
                    if (dr.Read())
                    {   
                        
                        getu = dr[0].ToString();
                        dr.Close();
                        SqlCommand cmd2 = new SqlCommand("Select top(1) T.team_id from dbo.team as T inner join dbo.requser as R on T.tleaderID = R.UserID where R.Username = N'"+uname +"'",connection);
                        Rd = cmd2.ExecuteReader();
                        if(Rd.Read())
                        {
                            string ur = Rd[0].ToString();
                            
                            
                            Response.Redirect("TeamLeader.aspx?uname=" +ur);
                            


                        }
                        Label1.Text = getu;
                        Response.Cookies["Username"].Value = getu;
                        Response.Cookies["Password"].Value = pwd;
                        if(getu=="admin")
                        { Response.Redirect("Admin.aspx"); }
                        Response.Redirect("Home.aspx");
                    }
                    else
                            {
                        Label1.Text = "Please Check Your Username or Password";
                    }
                    
                   
                    
                   
                    
                    
                    
                }
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}