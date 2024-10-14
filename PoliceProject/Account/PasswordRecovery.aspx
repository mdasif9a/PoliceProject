<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PasswordRecovery.aspx.cs" Inherits="PoliceProject.Account.PasswordRecovery" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Password Recovery</title>
    <link rel="stylesheet" href="/Content/Site.css" />
</head>

<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="password-recovery-box">
                <h2>Password Recovery</h2>
                <asp:PasswordRecovery ID="PasswordRecovery1" runat="server">
                </asp:PasswordRecovery>
            </div>
        </div>
    </form>
</body>

</html>

