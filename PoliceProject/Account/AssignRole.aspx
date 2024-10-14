<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssignRole.aspx.cs" Inherits="PoliceProject.Account.AssignRole" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assign Role</title>
    <link rel="stylesheet" href="/Content/Site.css" />
</head>
<body>
    <form runat="server" id="form1" class="container">
        <h2>Assign Role to User</h2>

        <asp:Label ID="lblMessage" runat="server" CssClass="text-success"></asp:Label>
        <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>

        <asp:DropDownList ID="ddlUsers" runat="server" CssClass="form-control"></asp:DropDownList>
        <asp:DropDownList ID="ddlRoles" runat="server" CssClass="form-control mt-2"></asp:DropDownList>

        <asp:Button ID="btnAssignRole" runat="server" Text="Assign Role" CssClass="btn btn-primary mt-3" OnClick="btnAssignRole_Click" />

        <hr />
        <h3>Users and Roles</h3>
        <asp:GridView ID="gvUsersRoles" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered">
            <Columns>
                <asp:BoundField DataField="UserName" HeaderText="Username" />
                <asp:BoundField DataField="RoleName" HeaderText="Role" />
                <asp:ButtonField Text="Remove Role" CommandName="RemoveRole" ButtonType="Button" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
