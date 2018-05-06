using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;

using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//contain classes for accessing and managing data from diverse sources 
using System.Configuration;//contains the types that provide the programming model for handling configuration data
using System.Data.SqlClient; //Data Provider for SQL Server

namespace Basketball1
{
    public partial class TeamLeader : System.Web.UI.Page
    {
        static String k;
        protected void Page_Load(object sender, EventArgs e)
        {
          k = Request.QueryString["uname"];
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();
                DataTable mytable = new DataTable();

                SqlDataAdapter adptr = new SqlDataAdapter("SELECT team_name as [Team Name],team_id as [TeamID] from dbo.team where tleaderID= " + k, connection);
                DataTable tbl = new DataTable();
                adptr.Fill(tbl);

                GridView1.DataSource = tbl;
                GridView1.DataBind();

                GridView1.DataBind();
                connection.Close();
            }
            catch { }
        }

        protected void Button8_Click1(object sender, EventArgs e)
        {
            {
                BasketEntities cnt = new BasketEntities();
                var plyr = cnt.players;
                var usr = cnt.requsers;
                
                player pl = new player();

                try
                {
                    pl.Name = TextBox20.Text;
                    pl.Surname = TextBox21.Text;
                    pl.team_id = short.Parse(TextBox25.Text);
                    pl.age = short.Parse(TextBox23.Text);
                    pl.picture = TextBox24.Text;
                    cnt.players.Add(pl);
                    cnt.SaveChanges();
                }
                catch { }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox25_TextChanged(object sender, EventArgs e)
        {

        }
    }
}