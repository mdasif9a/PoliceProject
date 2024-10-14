<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateRole.aspx.cs" Inherits="PoliceProject.Account.CreateRole" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Role</title>
    <link rel="stylesheet" href="/Content/Site.css" />
</head>
<body>
    <form runat="server" id="form1" class="container">
        <h2>Create Role</h2>
        <asp:Label ID="lblMessage" runat="server" CssClass="text-success"></asp:Label>
        <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>

        <asp:TextBox ID="txtRoleName" runat="server" CssClass="form-control" placeholder="Enter role name"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtRoleName" ErrorMessage="Role name is required" CssClass="text-danger" />

        <asp:Button ID="btnCreateRole" runat="server" Text="Create Role" CssClass="btn btn-primary mt-3" OnClick="btnCreateRole_Click" />
    </form>
</body>
</html>
