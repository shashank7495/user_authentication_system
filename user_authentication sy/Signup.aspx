<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="WebApplication1.Signup" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
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
            <h2>Register</h2>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
            <asp:Label ID="lblFirstName" runat="server" Text="First Name: "></asp:Label>
            <asp:TextBox ID="txtFirstName" placeholder="First Name" runat="server"></asp:TextBox><br />
            <asp:Label ID="lblLastName" runat="server" Text="Last Name: "></asp:Label>
            <asp:TextBox ID="txtLastName" placeholder="Last Name" runat="server"></asp:TextBox><br />
            <asp:Label ID="lblUsername" runat="server" Text="Username: "></asp:Label>
            <asp:TextBox ID="txtUsername" placeholder="Username" runat="server"></asp:TextBox><br />
            <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label>
            <asp:TextBox ID="txtEmail" placeholder="Email" runat="server"></asp:TextBox><br />
            <asp:Label ID="lblPassword" runat="server" Text="Password: "></asp:Label>
            <asp:TextBox ID="txtPassword" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox><br />
            <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password: "></asp:Label>
            <asp:TextBox ID="txtConfirmPassword" placeholder="Re-enter Password" runat="server" TextMode="Password"></asp:TextBox><br />
            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
        </div>
    </form>
</body>
</html>
