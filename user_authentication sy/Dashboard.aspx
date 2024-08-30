<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="WebApplication1.Dashboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
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
    <div style="text-align:center;">
        <h2>Welcome, <asp:Label ID="lblUsername" runat="server" Text=""></asp:Label></h2>
    </div>
</body>
</html>
