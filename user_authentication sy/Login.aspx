<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="../Styles/StyleSheet2.css" />
    <link rel="stylesheet" type="text/css" href="../Styles/StyleSheet1.css" />
</head>
<body>
    <div class="header">
       <h1>My Website</h1>
    </div>
    <div class="navbar">
       <a href="Home.aspx">Home</a>
       <a href="About.aspx">About</a>
       <a href="Contact.aspx">Contact Me</a>
       <a href="Login.aspx">Login</a>
       <a href="Signup.aspx">Sign Up</a>
        <a href="Dashboard.aspx">Dashboard</a>
    </div>
    <br>
    <br>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Login</h2>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
            <asp:Label ID="lblUsername" runat="server" Text="Username: "></asp:Label>
            <asp:TextBox ID="txtUsername" placeholder="Username" runat="server"></asp:TextBox><br />
            <asp:Label ID="lblPassword" runat="server" Text="Password: "></asp:Label>
            <asp:TextBox ID="txtPassword" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox><br />
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
        </div>
    </form>
</body>
</html>

