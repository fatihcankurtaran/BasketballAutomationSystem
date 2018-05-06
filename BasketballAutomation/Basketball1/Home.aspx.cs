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
    public partial class Home : System.Web.UI.Page
    {
        static int k = 0;
        static int counts;
        
        protected void Page_Load(object sender, EventArgs e)
        {



            GetNews();
             

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        private DataTable GetNews()

        {
            BasketEntities cont = new BasketEntities();
            var news1 = cont.news;
           // var backgrnd = cont.backgrounds;
           // string[] b = (from p in backgrnd select p.img_name).ToArray();

            string[] titles = (from c in news1 orderby c.new_id descending select c.title  ).ToArray();
            string[] names = (from d in news1 orderby d.new_id descending select d.authoruname).ToArray();
            string[] cnt = (from e in news1 orderby e.new_id descending select e.content).ToArray();
            string[] imge = (from f in news1 orderby f.new_id descending select f.img_name).ToArray();
            counts = (from x in news1 select x.new_id).Count(); 
            string connectionString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            DataTable mytable = new DataTable();
            
                //string title, author, content,img; 
                //SqlDataReader dr;
               //SqlCommand cmd = new SqlCommand("SELECT title,authoruname,content,img_name FROM dbo.[news] order by add_date asc, new_id asc ", connection);
                //dr = cmd.ExecuteReader();
                
                //if (dr.Read())
                {

                //Image4.ImageUrl = b[k];
                try
                {
                    
                        Label1.Text = titles[k];
                        Label2.Text = names[k];
                        Label3.Text = cnt[k];
                        Image1.ImageUrl = imge[k];
                    
                }
                catch { }

                try {
                    
                        Label4.Text = titles[k + 1];
                        Label6.Text = names[k + 1];
                        Label7.Text = cnt[k + 1];
                        Image2.ImageUrl = imge[k + 1];
                    
                }
                    catch
                {  }
                try
                {   
                        Label5.Text = titles[k + 2];
                        Label8.Text = names[k + 2];
                        Label9.Text = cnt[k + 2];
                        Image3.ImageUrl = imge[k + 2];
                   
                }
                catch {  }
                    
                            //title = dr.GetValue(a).ToString();
                            
                            
                            //author = dr.GetValue(a).ToString(); a++;
                            //content = dr.GetValue(a).ToString(); a++;
                            //img = dr.GetValue(a).ToString();  a++;
                            //Label1.Text = title;
                            //Label2.Text = author;
                            //Label3.Text = content;
                            //Image1.ImageUrl = img;
                            //Label5.Text = a.ToString();



                
                
                               

            }
            return mytable;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            if (k < counts -3 )
            {   k++;
                k++;
                k++;
                
            }
            Response.Redirect(Request.RawUrl);



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            if(k>0)
            { k = k - 1;
            k = k - 1;
            k = k - 1;}
            Response.Redirect(Request.RawUrl);





        }


    }



}