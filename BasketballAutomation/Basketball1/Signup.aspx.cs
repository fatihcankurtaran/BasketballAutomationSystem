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
    
    public partial class Signup : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            



        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            string lname = TextBox2.Text;
            string uname = TextBox3.Text;
            string pwd = TextBox4.Text;
            string email = TextBox5.Text;
            if (name != "" && lname != "" && uname != "" && pwd !="" && email != "" )

            { Label6.Text = "Done!";
                string connectionString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();
                if (connection.State == ConnectionState.Open)
                {
                    
                    String sql = "INSERT INTO dbo.requser(Name, Surname, Username,pword, Email) values (@name,@lname,@uname,@pass,@email);";

                    using (SqlCommand cmd = new SqlCommand(sql))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            cmd.Parameters.AddWithValue("@name", name);
                            cmd.Parameters.AddWithValue("@lname", lname);
                            cmd.Parameters.AddWithValue("@uname", uname);
                            cmd.Parameters.AddWithValue("@pass", pwd);
                            cmd.Parameters.AddWithValue("@email", email);
                            cmd.Connection = connection;
                            try
                            {
                                cmd.ExecuteNonQuery();
                            }
                            catch(System.Data.SqlClient.SqlException)
                            { Label6.Text = "Username or Email exist"; }
                        }
                        

                    }
                }
            }
            else
            {
                Label6.Text = "Fill all places";
            }

        }
    }
}