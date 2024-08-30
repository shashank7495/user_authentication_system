using System;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Web.Configuration;
using System.Web.UI;
using Microsoft.IdentityModel.Tokens;

namespace WebApplication1
{
    public partial class Dashboard : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["AuthToken"] != null)
                {
                    var token = Request.Cookies["AuthToken"].Value;
                    var handler = new JwtSecurityTokenHandler();
                    var key = Encoding.ASCII.GetBytes(WebConfigurationManager.AppSettings["JwtSecretKey"]);

                    try
                    {
                        var validations = new TokenValidationParameters
                        {
                            ValidateIssuer = false,
                            ValidateAudience = false,
                            ValidateLifetime = true,
                            ValidateIssuerSigningKey = true,
                            IssuerSigningKey = new SymmetricSecurityKey(key)
                        };

                        var claims = handler.ValidateToken(token, validations, out var tokenSecure);
                        var username = claims.Identity.Name;
                        lblWelcome.Text = "Hi " + username + "!";
                    }
                    catch (Exception ex)
                    {
                        lblWelcome.Text = "Invalid token: " + ex.Message;
                        Response.Redirect("Login.aspx");
                    }
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }
    }
}
