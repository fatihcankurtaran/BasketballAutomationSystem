using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace Basketball1
{
    public partial class Teams : System.Web.UI.Page
    { 
        static int n = 0;
        static int counts;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    FillDepartmentDropDown();
            //}
            yearTeams();
        }
        //private void FillDepartmentDropDown()
        //{
        //    BasketEntities cont = new BasketEntities();
        //    var teams = cont.teams;

        //    short?[] years = (from a in teams orderby a.year descending select a.year).ToArray();

        //    DropDownList1.DataSource = years;
        //    //for (int i = 0; i != k; i++, k++)
        //    //    {

        //    //        try { DropDownList1.Items.Insert(0, years[i].ToString()); }
        //    //        catch
        //    //        { i = k; }

        //    //    }
        //    DropDownList1.DataBind();

            
        //}
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender,EventArgs e)
        { }
        protected void yearTeams()
        {
            BasketEntities cont = new BasketEntities();
            var teams = cont.teams;

            

            
            counts = (from x in teams  select x.year).Count();
            string[] teamname = (from ids in teams orderby ids.year descending select ids.team_name).ToArray();
            string[] names = (from f in teams orderby f.year descending select f.team_name).ToArray();
            string[] address = (from j in teams orderby j.year descending select j.taddress).ToArray();
            string[] phones = (from t in teams orderby t.year descending select t.tphone).ToArray();
            string[] leadername = (from l in teams orderby l.year descending join m in cont.requsers on l.tleaderID equals m.UserID  select m.Name + " " + m.Surname).ToArray();
            string[] flags = (from flag in teams orderby flag.year descending select flag.teamflag).ToArray();
            try
            {
                // Label13.Text = teamname[n];
                Label5.Text = names[n];
                Label9.Text = leadername[n];
                Label8.Text = phones[n];
                Label10.Text = address[n];
                Image3.ImageUrl = flags[n];
            }
            catch { }
            try
            {
                //Label14.Text = teamname[n + 1];
                Label4.Text = names[n+1];
                Label7.Text = leadername[n+1];
                Label6.Text = phones[n+1];
                Label11.Text = address[n+1];
                Image2.ImageUrl = flags[n+1];
            }
            catch { Button4.Visible = false; }
            try
            {
               // Label15.Text =teamname[n + 2];
                Label1.Text = names[n+2];
                Label3.Text = leadername[n+2];
                Label2.Text = phones[n+2];
                Label12.Text = address[n+2];
                Image1.ImageUrl = flags[n+2];
            }
                catch
            { Button5.Visible = false; }
            
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (n < counts - 3)
            {
                n++;
                n++;
                n++;
                

            }
            Response.Redirect(Request.RawUrl);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (n > 0)
            {
                n = n- 1;
                n = n - 1;
                n = n - 1;
                
            }
            Response.Redirect(Request.RawUrl);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //Response.Cookies["team_name"].Value = Label13.Text;
            Response.Redirect("Players.aspx?field1=" + Label5.Text);
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
           // Response.Cookies["team_name"].Value = Label14.Text;
            Response.Redirect("Players.aspx?field1=" + Label4.Text);
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
           // Response.Cookies["team_name"].Value = Label15.Text;
            Response.Redirect("Players.aspx?field1=" + Label1.Text);
        }
    }
}