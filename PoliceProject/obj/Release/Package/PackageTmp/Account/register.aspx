<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="PoliceProject.Account.register" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="/Content/Site.css" />
</head>

<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="register-box">
                <h2>Register</h2>
                <asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
                </asp:CreateUserWizard>
            </div>
        </div>
    </form>
</body>

</html>
