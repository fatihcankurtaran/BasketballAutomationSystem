using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;

using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//contain classes for accessing and managing data from diverse sources 
using System.Configuration;//contains the types that provide the programming model for handling configuration data
using System.Data.SqlClient;

namespace Basketball1
{
    public partial class Players : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   String s = Request.QueryString["field1"];


            if (s != null)
            {
                try
                {
                    string team_name = s;

                    string connectionString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                    SqlConnection connection = new SqlConnection(connectionString);
                    connection.Open();
                    DataTable mytable = new DataTable();
                    SqlDataAdapter adptr = new SqlDataAdapter("SELECT P.picture as images, P.Name as Name,P.Surname as Surname,P.Age as Age from dbo.player as P inner join dbo.team as T on P.team_id = T.team_id where T.team_name = N'" + team_name + "'", connection);

                    DataTable tbl = new DataTable();
                    adptr.Fill(tbl);

                    GridView1.DataSource = tbl;

                    GridView1.DataBind();


                    GridView1.DataBind();
                    connection.Close();
                    Response.Cookies["team_name"].Expires = DateTime.Now.AddDays(-1);
                }
                catch
                {

                }
            }
            else
                try {
                    string connectionString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                    SqlConnection connection = new SqlConnection(connectionString);
                    connection.Open();
                    DataTable mytable = new DataTable();

                    SqlDataAdapter adptr = new SqlDataAdapter("SELECT P.picture as images, P.Name as Name,P.Surname as Surname,P.Age as Age from dbo.player as P inner join dbo.team as T on P.team_id = T.team_id", connection);

                    DataTable tbl = new DataTable();
                    adptr.Fill(tbl);

                    GridView1.DataSource = tbl;

                    GridView1.DataBind();


                    GridView1.DataBind();
                    connection.Close();
                }
                catch { }


            }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string k = DropDownList1.SelectedItem.Text;
            string connectionString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            DataTable mytable = new DataTable();

            //BasketEntities cont = new BasketEntities();
            //var players = cont.players;
            //var teams = cont.teams;
            //var teamids = (from t in teams where k == t.team_name select t.team_id).First();
            //string  images = (from i in players where teamids == i.team_id select i.picture);
            //string  names= (from n in players where teamids == n.team_id select n.Name).ToArray();
            //string [] surname = (from s in players where teamids == s.team_id select s.Surname).ToArray();
            //var age = (from a in players where teamids == a.team_id select a.age);
            //var cnt = (from c in players where teamids == c.team_id select c.team_id).Count();

            //for (int i = 0; i < cnt; i++)
            //{
            //    imgStudentImage.ImageUrl = images;
            //    lblStudentName.Text = names;



            //}
            SqlDataAdapter adptr = new SqlDataAdapter("SELECT P.picture as images, P.Name as Name,P.Surname as Surname,P.Age as Age from dbo.player as P inner join dbo.team as T on P.team_id = T.team_id where T.team_name = N'" + k + "'", connection);

            DataTable tbl = new DataTable();
            adptr.Fill(tbl);
            
            GridView1.DataSource = tbl;
            
            
            GridView1.DataBind();
            
     
        }
        
        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}
