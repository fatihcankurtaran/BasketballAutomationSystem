<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Basketball1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <title>IKU Basketball</title>
    <link rel="stylesheet" type="text/css" href="mystyle.css"/>
    <style type="text/css">
        #form2 {
            margin-bottom: 19px;
            min-height:700px;
            
        }
    </style>
</head>
<body >
    <img id= "iku" src="/Logos/iku_logo.png" style="width:198px; height: 96px;"/>
    <form id="form2" runat="server">
          <div id="Menu" style="margin-top:65px;">
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
        <div id ="login" >
            <div  style="margin-top:320px; margin-left:150px; position:absolute;">
    
             <br />

            <asp:Label ID="Label1" runat="server">Username</asp:Label>

        <asp:TextBox ID="TextBox1" runat="server"  EnableTheming="True" MaxLength="30" OnTextChanged="TextBox1_TextChanged" style="margin-left: 3px; margin-top: 0px;" BackColor="#999999" BorderColor="#333333" BorderStyle="Inset" ForeColor="White" placeholder="Username"></asp:TextBox>
        <br />
        
        <br />
       <asp:Label ID="Label2" runat="server">Password</asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"  EnableTheming="True" MaxLength="20" OnTextChanged="TextBox1_TextChanged" style="margin-left: 5px" BackColor="#999999" BorderColor="#333333" BorderStyle="Inset" ForeColor="White" placeholder="Password" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Login" style="margin-left: 128px; margin-top: 17px" BackColor="#333333" BorderColor="#333333" BorderStyle="Outset" ForeColor="White" OnClick="Button1_Click" />

        
  </div>
        
        
        </div>
    </form>
    
</body>
</html>


