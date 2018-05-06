<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Basketball1.Signup" %>

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
          <div id="Menu" style ="margin-top:65px;">
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
        <div id ="login">
            <div  style="margin-top:300px; margin-left:150px; position:absolute;">
    
             <br />

         <div id="Signup" >
        
        <asp:Label ID="Label1" runat="server" Text="First Name" ForeColor="black"></asp:Label><br/>
        <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="FirstName" MaxLength="30" style="margin-left: 100px" BackColor="#999999" BorderColor="#999999"></asp:TextBox><br/>
        <asp:Label ID="Label2" runat="server" Text="Last Name" ForeColor="black"></asp:Label><br/>
        <asp:TextBox ID="TextBox2" runat="server" AutoCompleteType="LastName" MaxLength="30" style="margin-left: 100px" BackColor="#999999" BorderColor="#999999"></asp:TextBox><br/>
        <asp:Label ID="Label3" runat="server" Text="User Name" ForeColor="black"></asp:Label><br/>
        <asp:TextBox ID="TextBox3" runat="server" AutoCompleteType="DisplayName" MaxLength="30" style="margin-left: 100px" BackColor="#999999" BorderColor="#999999"></asp:TextBox><br/>
        <asp:Label ID="Label4" runat="server" Text="Password" ForeColor="black"></asp:Label><br/>
        <asp:TextBox ID="TextBox4" runat="server" AutoCompleteType="Disabled" MaxLength="20" OnTextChanged="TextBox4_TextChanged" style="margin-left: 100px" TextMode="Password" Width="149px" BackColor="#999999" BorderColor="#999999"></asp:TextBox><br/>
        <asp:Label ID="Label5" runat="server" Text="E Mail" ForeColor="black"></asp:Label><br/>
        <asp:TextBox ID="TextBox5" runat="server" MaxLength="30" style="margin-left: 100px" TextMode="Email" BackColor="#999999" BorderColor="#999999"></asp:TextBox><br/>
        <asp:Button ID="Button1" runat="server" Text="Sign Up" style="margin-left: 128px; margin-top: 17px" BackColor="#333333" BorderColor="#333333" BorderStyle="Outset" ForeColor="White" OnClick="Button1_Click" />
        <br/>
        <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
    </div>
        
  </div>
        
        
        </div>
    </form>
    
</body>
</html>