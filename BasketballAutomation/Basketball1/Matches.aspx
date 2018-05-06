<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Matches.aspx.cs" Inherits="Basketball1.Matches" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>IKU Basketball</title>
    <link rel="stylesheet" type="text/css" href="mystyle.css"/>
    <style type="text/css">
        #form1 {
            margin-bottom: 19px;
            height: auto;
            min-height:600px;
            width: 1011px;
        }
    </style>
</head>
<body >
    <img id= "iku" src="/Logos/iku_logo.png" style="width:198px; height: 96px;"/>
    <form id="form1" runat="server">
          <div id="Menu">
<ul>
    <li> <a href="Home.aspx"> Home</a> </li> 
    <li> <a href="Teams.aspx"> Teams</a> </li> 
    <li> <a href="Matches.aspx">Matches</a> </li> 
    <li> <a href ="Players.aspx">Players</a></li>
    <li> <a href="Login.aspx">Log in</a> </li> 
    <li> <a href="Signup.aspx">Sign up</a> </li> 
   
</ul>
    </div>
        
        <div id ="header" style="" >
        <img class ="myhead" src="http://bbpreps.com/boys-basketball/wp-content/uploads/sites/11/2016/02/basketball-header.jpg" style =   "position:absolute; width: 80%; top: 15px; left: 209px; height: 183px;object-fit: fill;"/>
    
        
        <img class ="myhead" src="https://www.50-best.com/images/twitter_headers/basketball.jpg" style =   "position:absolute; width: 80%; top: 17px; left: 209px; height: 183px;object-fit: fill;"/>
    
        
        <img class ="myhead" src="https://www.freewebheaders.com/wordpress/wp-content/gallery/basketball/basketball-sky-header.jpg"style =   "position:absolute; width: 80%; top: 15px; left: 209px; height: 183px;object-fit: fill;" />
    
        
        <img class ="myhead" src="https://coverfiles.alphacoders.com/495/49585.jpg" style =   "position:absolute; width: 80%; top: 15px; left: 209px; height: 183px;object-fit: fill;"/>
        
        &nbsp;
        <h2>Istanbul Kultur University Basketball System</h2>
        
        
       
        <script>
            var slideIndex = 0;
            carousel();

            function carousel() {
                var i;
                var x = document.getElementsByClassName("myhead");
                for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";

                }
                slideIndex++;
                if (slideIndex > x.length) { slideIndex = 1 }
                x[slideIndex - 1].style.display = "inline";

                setTimeout(carousel, 2000); // Change image every 2 seconds
            }
        </script>
            <div id ="Matches">

                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>


            </div>
    
    
   
        </div>
    
   
            
  
        
        
        
    </form>
    
</body>
</html>