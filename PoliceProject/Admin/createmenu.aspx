<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="createmenu.aspx.cs" Inherits="PoliceProject.Admin.createmenu" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Menu</title>
    <style>
        /* Custom styling for the GridView */
        .gridview-header {
            background-color: #007bff;
            color: white;
            font-weight: bold;
            padding: 10px;
        }
        .gridview-row {
            background-color: #f8f9fa;
            border: 1px solid #dee2e6;
            padding: 10px;
        }
        .gridview-row-alt {
            background-color: #e9ecef;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Create and Manage Menus</h2>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
            
            <asp:Panel ID="pnlMenu" runat="server">
                <asp:Label ID="lblMenuName" runat="server" Text="Menu Name:"></asp:Label>
                <asp:TextBox ID="txtMenuName" runat="server"></asp:TextBox>
                <br /><br />

                <asp:Label ID="lblMenuURL" runat="server" Text="Menu URL:"></asp:Label>
                <asp:TextBox ID="txtMenuURL" runat="server"></asp:TextBox>
                <br /><br />

                <asp:Label ID="lblMenuOrder" runat="server" Text="Menu Order:"></asp:Label>
                <asp:TextBox ID="txtMenuOrder" runat="server"></asp:TextBox>
                <br /><br />

                <asp:Label ID="lblMenuParent" runat="server" Text="Parent Menu:"></asp:Label>
                <asp:DropDownList ID="ddlParentMenu" runat="server"></asp:DropDownList>
                <br /><br />

                <asp:CheckBox ID="chkIsDropDown" runat="server" Text="Is Dropdown?" />
                <br /><br />

                <asp:Label ID="lblRole" runat="server" Text="Role:"></asp:Label>
                <asp:DropDownList ID="ddlRole" runat="server"></asp:DropDownList>
                <br /><br />

                <asp:Button ID="btnSaveMenu" runat="server" Text="Save Menu" OnClick="btnSaveMenu_Click" />
            </asp:Panel>

            <br /><br />

            <asp:GridView ID="gvMenus" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered">
                <Columns>
                    <asp:BoundField DataField="MenuId" HeaderText="ID" />
                    <asp:BoundField DataField="MenuName_En" HeaderText="Menu Name" />
                    <asp:BoundField DataField="MenuURL" HeaderText="Menu URL" />
                    <asp:BoundField DataField="MenuOrder" HeaderText="Order" />
                    <asp:BoundField DataField="IsDropDown" HeaderText="Is Dropdown" />
                    <asp:BoundField DataField="RoleName" HeaderText="Role" />
                    <asp:TemplateField HeaderText="Actions">
                        <ItemTemplate>
                            <asp:Button ID="btnEdit" runat="server" Text="Edit" CommandName="Edit" CommandArgument='<%# Eval("MenuId") %>' />
                            <asp:Button ID="btnDelete" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%# Eval("MenuId") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>

