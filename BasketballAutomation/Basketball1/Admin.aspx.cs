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
    public partial class Admin : System.Web.UI.Page
    {
        static string usrname;
        protected void Page_Load(object sender, EventArgs e)
        {
            



            


            
            
            
        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {

        }
        protected void btnSubmit1_Click(object sender, EventArgs e)
        {
            
        }

        protected void TextBox11_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            BasketEntities cont = new BasketEntities();
            var users = cont.requsers;

            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox5.Text != "" && TextBox6.Text != "")
            {
                team newteam = new team();
                newteam.team_name = TextBox1.Text;
                newteam.taddress = TextBox2.Text;
                newteam.tphone = TextBox3.Text;
                newteam.teamflag = TextBox5.Text;
                
                newteam.year = short.Parse(TextBox6.Text);
                
                    
                newteam.tleaderID = short.Parse(TextBox11.Text);
                
                cont.teams.Add(newteam);
                int result = cont.SaveChanges();
                
            }
            cont.Dispose();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            BasketEntities cnt = new BasketEntities();

            var new_ = cnt.news;

            if(1==1)
            {
                news new1 = new news();
                new1.title = TextBox7.Text;
                new1.authoruname = TextBox8.Text;
                new1.content = TextBox9.Text;
                new1.img_name = TextBox10.Text;
                cnt.news.Add(new1);
                int result = cnt.SaveChanges();
            }

            cnt.Dispose();


            
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
          
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if(TextBox4.Text != "")
            {
                string year = TextBox4.Text; 
                string connectionString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();
                DataTable mytable = new DataTable();

                SqlDataAdapter adptr = new SqlDataAdapter("SELECT team_name as [Team Name],team_id as [TeamID] from dbo.team where year= " + year , connection);
                DataTable tbl = new DataTable();
                adptr.Fill(tbl);

                GridView2.DataSource = tbl;
                GridView2.DataBind();

                GridView2.DataBind();
                connection.Close();
                
                //var team = cnt.teams;
                ////short[] teamid = (from ids in team where year == (ids.year).ToString() select ids.team_id).ToArray();
                
                //int count = (from c in team where year  == (c.year).ToString() select c.team_id).Count();
                //Random rnd = new Random();
                //short rndm = (short)(rnd.Next(0, count +1));
                


            }
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            BasketEntities cnt = new BasketEntities();
            var match = cnt.Matches;

            Match mtch = new Match();

            try
            {
                mtch.date = DateTime.Parse(TextBox19.Text);
                mtch.Team2 = short.Parse(TextBox16.Text);
                mtch.Team1 = short.Parse(TextBox15.Text);
            }
            catch { }


            

            try
            {
                cnt.Matches.Add(mtch);
            }
            catch { }
            try
            {
                int result = cnt.SaveChanges();
            }
            catch { }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            DataTable mytable = new DataTable();

            SqlDataAdapter adptr = new SqlDataAdapter("SELECT M.Team1 as [1.TeamID],T.team_name as [1.Team Name],M.Team2 as [2.TeamID], K.team_name as [2.Team Name],M.score as [Score],M.date as [Date] from dbo.Matches as M inner join dbo.team as T on M.Team1 = T.team_id inner join dbo.team as K on M.Team2 = K.team_id  ", connection);
            DataTable tbl = new DataTable();
            adptr.Fill(tbl);

            GridView3.DataSource = tbl;
            GridView3.DataBind();

            GridView3.DataBind();
            connection.Close();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            BasketEntities cnt = new BasketEntities();
            var match = cnt.Matches;
            try
            {
                short first = short.Parse(TextBox17.Text);
                short second = short.Parse(TextBox12.Text);
                var t = (from i in match where i.Team1 == first && i.Team2 == second select i).First();
                t.score = (TextBox18.Text);
                cnt.SaveChanges();
            }
            catch { }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            DataTable mytable = new DataTable();

            SqlDataAdapter adptr = new SqlDataAdapter("SELECT Name,Surname,UserID from dbo.requser", connection);
            DataTable tbl = new DataTable();
            adptr.Fill(tbl);

            GridView1.DataSource = tbl;
            GridView1.DataBind();

            GridView1.DataBind();
            connection.Close();
        }

        protected void TextBox19_TextChanged(object sender, EventArgs e)
        {

        }
        protected void Button8_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button8_Click1(object sender, EventArgs e)
        {
            BasketEntities cnt = new BasketEntities();
            var plyr = cnt.players;

            player pl = new player();

            try
            {
                pl.Name = TextBox20.Text;
                pl.Surname = TextBox21.Text;
                pl.team_id = short.Parse(TextBox22.Text);
                pl.age = short.Parse(TextBox23.Text);
                pl.picture = TextBox24.Text;
                cnt.players.Add(pl);
                cnt.SaveChanges();
            }
            catch { }
        }
    }
}