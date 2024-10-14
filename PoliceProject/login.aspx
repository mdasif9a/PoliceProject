<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="PoliceProject.login" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <link href="/Images/faviconlogo.jpg" rel="icon" />
    <link href="/Images/faviconlogo.jpg" rel="apple-touch-icon" />
    <%--<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">--%>
    <link rel="stylesheet" href="/AdminLayout/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="/AdminLayout/css/adminlte.min.css">
</head>

<body class="hold-transition login-page">
    <form id="loginform" runat="server" class="login-box">

        <div class="card card-outline card-primary">
            <div class="card-body">
                <div class="card-header text-center pt-0">
                    <h2 class="h1"><b>Login </b>Page</h2>
                </div>
                <p class="login-box-msg">Log in to start your session</p>

                <!-- ASP.NET Login Control -->
                <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate1" CssClass="w-100">
                    <LayoutTemplate>
                        <!-- Email Field -->
                        <div class="mb-2">
                            <div class="input-group">
                                <asp:TextBox ID="UserName" runat="server" CssClass="form-control shadow-none" placeholder="Enter Username" />
                                <div class="input-group-append">
                                    <div class="input-group-text">
                                        <span class="fa fa-envelope"></span>
                                    </div>
                                </div>
                            </div>
                            <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="UserName" ErrorMessage="Username is required" CssClass="text-danger mt-1" />
                        </div>

                        <!-- Password Field -->
                        <div class="mb-2">
                            <div class="input-group">
                                <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control shadow-none" placeholder="Password" />
                                <div class="input-group-append">
                                    <div class="input-group-text">
                                        <span class="fa fa-lock"></span>
                                    </div>
                                </div>
                            </div>
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="Password" ErrorMessage="Password is required" CssClass="text-danger mt-1" />
                        </div>

                        <!-- Login Button -->
                        <div class="row justify-content-center">
                            <div class="col-6">
                                <asp:Button ID="Login" runat="server" Text="LOGIN" CssClass="btn btn-outline-success btn-block" CommandName="Login" />
                            </div>
                        </div>

                    </LayoutTemplate>
                </asp:Login>
            </div>
        </div>


        <script src="Scripts/jquery-3.6.3.js"></script>
        <script src="/AdminLayout/js/bootstrap.bundle.min.js"></script>
        <script src="/AdminLayout/js/adminlte.min.js"></script>
    </form>
</body>
</html>
