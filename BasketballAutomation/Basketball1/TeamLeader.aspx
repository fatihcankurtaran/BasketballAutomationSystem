<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeamLeader.aspx.cs" Inherits="Basketball1.TeamLeader" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="mystyle.css"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    <style type="text/css">
        #Submit1 {
            height: 24px;
            margin-top: 0px;
        }
        #Submit2 {
            margin-top: 0px;
        }
    </style>
    <title>IKU Basketball</title>
    <link rel="stylesheet" type="text/css" href="mystyle.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         &nbsp;<img id= "iku" src="/Logos/iku_logo.png" style="width:115px; height: 58px;"/>
        <h2>Istanbul Kultur University Basketball System</h2>
     </div>  
    <div id="TeamMenu">
    <ul>
    <li> <a href="Home.aspx"> Home</a> </li> 
    <li> <a href="Teams.aspx"> Teams</a> </li> 
    <li> <a href="Matches.aspx">Matches</a> </li> 
    <li> <a href ="Players.aspx">Players</a></li>
    <li> <a href="Login.aspx">Log in</a> </li> 
    <li> <a href="Signup.aspx">Sign up</a> </li>
   
</ul>
    </div>
    <div id ="Teams" style="margin-top:50px;">
        
        <div>

           
            <h4>
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
                Player </h4>
            </div>
        <asp:TextBox ID="TextBox20" placeholder ="Name" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox21" placeholder ="Surname" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox25" placeholder ="TeamID" runat="server" OnTextChanged="TextBox25_TextChanged"></asp:TextBox>
        <br />
        
        <asp:TextBox ID="TextBox23" placeholder ="Age" runat="server" TextMode="Number"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox24" placeholder ="Picture" runat="server" ></asp:TextBox>
         <br />
            <asp:Button ID="Button8" runat="server" OnClick="Button8_Click1" Text="Add Player" BackColor="#333333" BorderColor="#333333" BorderStyle="Outset" ForeColor="White" />
            <br />


    <p>
        &nbsp;</p>
    </div>
    </form>
</body>
</html>
