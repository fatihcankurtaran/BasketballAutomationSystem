<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Teams.aspx.cs" Inherits="Basketball1.Teams" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <title>IKU Basketball</title>
    <link rel="stylesheet" type="text/css" href="mystyle.css"/>
    <style type="text/css">
        #form1 {
            margin-bottom: 19px;
        }
        .team {
            height: 97px;
            width: 225px;
        }
    </style>
</head>
<body >
    <img id= "iku" src="/Logos/iku_logo.png" style="width:198px; height: 96px;"/>
    <form id="form3" runat="server">
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
        <div id ="right">
        <div id ="header" style="" >
        <img class ="myhead" src="http://bbpreps.com/boys-basketball/wp-content/uploads/sites/11/2016/02/basketball-header.jpg" style =   "position:absolute; width: 80%; top: 15px; left: 209px; height: 183px;object-fit: fill;"/>
    
        
        <img class ="myhead" src="https://www.50-best.com/images/twitter_headers/basketball.jpg" style =   "position:absolute; width: 80%; top: 17px; left: 209px; height: 183px;object-fit: fill;"/>
    
        
        <img class ="myhead" src="https://www.freewebheaders.com/wordpress/wp-content/gallery/basketball/basketball-sky-header.jpg"style =   "position:absolute; width: 80%; top: 15px; left: 209px; height: 183px;object-fit: fill;" />
    
        
        <img class ="myhead" src="https://coverfiles.alphacoders.com/495/49585.jpg" style =   "position:absolute; width: 80%; top: 15px; left: 209px; height: 183px;object-fit: fill;"/>
        
        &nbsp;
        <h2 style ="margin-left:-110px;">Istanbul Kultur University Basketball System</h2>
        
            
        
        </div>
       
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
            </div>
        <div id ="Teams">

        <p style="margin-left:50px;">Teams</p>
        
        <div class ="team">
            <asp:Image ID="Image3"  CssClass ="Image1" runat="server" Height="92px"  /> 
            <br />
        <asp:Label ID="Label5" runat="server" Text="" Font-Italic="True" Font-Bold="True" ForeColor="#666666"></asp:Label>
            <br />
        
        <asp:Label ID="Label9" runat="server" Text="" Font-Size="8pt" Font-Names="Arial" Font-Strikeout="False" ForeColor="#333333"></asp:Label>
            <br />
        <asp:Label ID="Label8" runat="server" Text="" Font-Size="8pt" ForeColor =" #333333"></asp:Label>
        <br />
            <asp:Label ID="Label10" runat="server" Text="" Font-Size="8pt" ForeColor =" #333333"></asp:Label>
            <br />
            <asp:Label ID="Label13" runat="server" Text="" Font-Size="8pt" ForeColor =" #333333"></asp:Label>
            <br/>
            <asp:Button ID="Button3" runat="server" Text="Button" OnClick="Button3_Click" BackColor="#999999" BorderColor="#999999" BorderStyle="Solid" ForeColor="White" />
        </div>
        
        <div class ="team">
            <asp:Image ID="Image2"  CssClass ="Image1" runat="server" Height="92px"  /> 
            <br />
        <asp:Label ID="Label4" runat="server" Text="" Font-Italic="True" Font-Bold="True" ForeColor="#666666"></asp:Label>
            <br />
        
        <asp:Label ID="Label7" runat="server" Text="" Font-Size="8pt" Font-Names="Arial" Font-Strikeout="False" ForeColor="#333333"></asp:Label>
            <br />
        <asp:Label ID="Label6" runat="server" Text="" Font-Size="8pt" ForeColor =" #333333"></asp:Label>
            <br/>
            <asp:Label ID="Label11" runat="server" Text="" Font-Size="8pt" ForeColor =" #333333"></asp:Label>
            <br/>
            <asp:Label ID="Label14" runat="server" Text="" Font-Size="8pt" ForeColor =" #333333"></asp:Label>
            <br />
            <asp:Button ID="Button4" runat="server" Text="Button" OnClick="Button4_Click"  BackColor="#999999" BorderColor="#999999" BorderStyle="Solid" ForeColor="White" />
        </div>
        
        <div class ="team">
            
           
        <asp:Image ID="Image1"  CssClass ="Image1" runat="server" Height="92px"  /> 
            <br />
        <asp:Label ID="Label1" runat="server" Text="" Font-Italic="True" Font-Bold="True" ForeColor="#666666"></asp:Label>
            <br />
        
        <asp:Label ID="Label3" runat="server" Text="" Font-Size="8pt" Font-Names="Arial" Font-Strikeout="False" ForeColor="#333333"></asp:Label>
            <br />
        <asp:Label ID="Label2" runat="server" Text="" Font-Size="8pt" ForeColor="#333333"></asp:Label>
            <br/>
            <asp:Label ID="Label12" runat="server" Text="" Font-Size="8pt" ForeColor="#333333"></asp:Label>
            <br/>
            <asp:Label ID="Label15" runat="server" Text="" Font-Size="8pt" ForeColor =" #333333"></asp:Label>
            <br />
           <asp:Button ID="Button5" runat="server" Text="Button" OnClick="Button5_Click"  BackColor="#999999" BorderColor="#999999" BorderStyle="Solid" ForeColor="White" />
            </div>
        
        <asp:Button ID="Button1" runat="server" Text="Next" OnClick="Button1_Click" style="margin-left: 10px;  float:right;" BackColor="#999999" BorderColor="#999999" BorderStyle="Solid" ForeColor="White"/>
        <asp:Button ID="Button2" runat="server" Text="Back" style="margin-left: 10px;  float:right;" OnClick="Button2_Click" BackColor="#999999" BorderColor="#999999" BorderStyle="Solid" ForeColor="White" Height="23px" Width="41px"/>
        
        </div>
        
    
        
    </form>
    
</body>
</html>