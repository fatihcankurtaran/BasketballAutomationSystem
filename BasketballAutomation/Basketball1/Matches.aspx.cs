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
    public partial class Matches : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            DataTable mytable = new DataTable();

            SqlDataAdapter adptr = new SqlDataAdapter("SELECT M.Team1 as [1.TeamID],T.team_name as [1.Team Name],M.Team2 as [2.TeamID], K.team_name as [2.Team Name],M.score as [Score], M.date as [Date] from dbo.Matches as M inner join dbo.team as T on M.Team1 = T.team_id inner join dbo.team as K on M.Team2 = K.team_id  ", connection);
            DataTable tbl = new DataTable();
            adptr.Fill(tbl);

            GridView1.DataSource = tbl;
            GridView1.DataBind();

            GridView1.DataBind();
            connection.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           

        }
    }
}