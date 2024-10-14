<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="PoliceProject.Account.login" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="/Content/Site.css" />
</head>

<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="login-box">
                <h2>Login</h2>
                <asp:Login ID="LoginControl" runat="server" OnAuthenticate="LoginControl_Authenticate" FailureText="Invalid login attempt">
                    <LayoutTemplate>
                        <asp:Literal ID="FailureText" runat="server" EnableViewState="false" />
                        <asp:TextBox ID="UserName" runat="server" CssClass="form-control" placeholder="Username" />
                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="Username is required" />

                        <asp:TextBox ID="Password" runat="server" CssClass="form-control" TextMode="Password" placeholder="Password" />
                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required" />

                        <asp:Button ID="Login" runat="server" CommandName="Login" Text="Login" CssClass="btn btn-primary" />
                    </LayoutTemplate>
                </asp:Login>
            </div>
        </div>
    </form>
</body>

</html>
