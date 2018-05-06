<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Basketball1.Admin" %>

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
    <div id ="Teams">
        
        <div>

            Team Create</div>
        <asp:TextBox ID="TextBox1" placeholder ="Team Name" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" placeholder ="Team Address"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox3" runat="server" placeholder ="Team Phone" TextMode="Phone"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox5_TextChanged" placeholder="Team Flag URL"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox6" runat="server" placeholder ="Year" TextMode="Number" ></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox11" runat="server" OnTextChanged="TextBox11_TextChanged" placeholder="Leader ID"></asp:TextBox>
        <br />
        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Show Users" />
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sumbit" />
        <br />
        <div>
            <br />
            <br />
            Submit News<br />
            <asp:TextBox ID="TextBox7" runat="server" OnTextChanged="TextBox7_TextChanged" placeholder ="Title"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox8" runat="server" placeholder ="Author Username"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox9" runat="server" TextMode="MultiLine" placeholder ="Content"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox10" runat="server" placeholder ="Image URL"></asp:TextBox>
            <br />
            </div>
        <div>
             <br />
            <br />
            Match Teams<br />
            <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged" placeholder ="Year"></asp:TextBox>
            <br />
            <asp:Button ID="Button3" runat="server" Text="Show Teams" OnClick="Button3_Click" />
            <asp:GridView ID="GridView2" runat="server" Height="139px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="192px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:TextBox ID="TextBox15" runat="server" placeholder ="TeamID 1"></asp:TextBox>
            <asp:TextBox ID="TextBox16" runat="server" placeholder ="TeamID 2"></asp:TextBox>
            <asp:TextBox ID="TextBox19" runat="server" OnTextChanged="TextBox19_TextChanged" TextMode="Date"></asp:TextBox>
            <br />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Match Teams" />
            <br />
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Show Matches" />
            <asp:GridView ID="GridView3" runat="server" Height="139px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="192px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <br />
            <asp:TextBox ID="TextBox17" runat="server" placeholder ="Team 1" Width="117px"></asp:TextBox>
            <asp:TextBox ID="TextBox12" runat="server" placeholder ="Team 2" Width="117px"></asp:TextBox>
            <asp:TextBox ID="TextBox18" runat="server" placeholder ="Score" Width="117px"></asp:TextBox>
            <br />
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Add Score" />
            <br />
            <br />
            <h4>Player </h4>
            </div>
        <asp:TextBox ID="TextBox20" placeholder ="Name" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox21" placeholder ="Surname" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox22" placeholder ="TeamID" runat="server" TextMode="Number"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox23" placeholder ="Age" runat="server" TextMode="Number"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox24" placeholder ="Picture" runat="server"></asp:TextBox>
         <br />
            <asp:Button ID="Button8" runat="server" OnClick="Button8_Click1" Text="Add Player" />
            <br />


    <p>
        &nbsp;</p>
    </div>
    </form>
</body>
</html>