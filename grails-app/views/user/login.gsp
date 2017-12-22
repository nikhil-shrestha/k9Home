<%--
  Created by IntelliJ IDEA.
  User: illusionizt
  Date: 11/27/2017
  Time: 7:34 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login</title>
    <link rel="icon" href="${resource(dir: "images/k9", file: "favicon.ico")}">
    <link rel="shortcut icon" href="${resource(dir: "images/k9", file: "favicon.ico")}">
    <!-- Bootstrap core CSS-->
    <link href="${resource(dir: 'vendor/bootstrap/css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <!-- Custom fonts for this template-->
    <link href="${resource(dir: 'vendor/font-awesome/css', file: 'font-awesome.min.css')}" rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="${resource(dir: 'css', file: 'sb-admin.css')}" rel="stylesheet">

</head>

<body class="bg-dark">

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <g:link controller="home" action="index" class="navbar-brand">Home</g:link>
    </div>
</nav>

<div class="container">
    <div class="card card-login mx-auto mt-5">
        <div class="card-header">Login</div>

        <div class="card-body">
            <div align="center" style="color: orange">
                User accounts are currently disabled.
            </div>


            <g:form controller="user" action="dashboard" method="post">
                <div class="form-group">
                    <label>Email address</label>
                    <input class="form-control" id="email" name="email" type="email" placeholder="Enter email"required>
                </div>

                <div class="form-group">
                    <label>Password</label>
                    <input class="form-control" id="password" name="password" type="password" placeholder="Password" required>
                </div>

                <div class="form-group">
                    <div class="form-check">
                        <label class="form-check-label">
                            <input class="form-check-input" type="checkbox"> Remember Password</label>
                    </div>
                </div>
                <button class="btn btn-primary btn-block">Login</button>
            </g:form>
        %{--<div class="text-center">
            <g:link class="d-block small mt-3" controller="user" action="registerView">Register an Account</g:link>
        </div>--}%
        </div>
    </div>
</div>
<!-- Bootstrap core JavaScript-->
<script src="${resource(dir: "vendor/jquery", file: "jquery.min.js")}"></script>
<script src="${resource(dir: "vendor/bootstrap/js", file: "bootstrap.bundle.min.js")}"></script>
<!-- Core plugin JavaScript-->
<script src="${resource(dir: "vendor/jquery-easing", file: "jquery.easing.min.js")}"></script>

</body>
</html>