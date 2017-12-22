<%--
  Created by IntelliJ IDEA.
  User: illusionizt
  Date: 11/27/2017
  Time: 7:34 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Register</title>
    <!-- Bootstrap core CSS-->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for this template-->
    <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- Custom styles for this template-->
    <link href="../css/sb-admin.css" rel="stylesheet">
</head>

<body class="bg-dark">
<div class="container">
    <div class="card card-register mx-auto mt-5">
        <div class="card-header">Register an Account</div>

    <div class="card-body">
        <g:form controller="user" action="save">
            <div class="form-group">
                <div class="form-row">
                    <div class="col-md-6">
                        <input type="hidden" name="role" value="user">
                    </div>
                    <label>First name</label>
                    <input class="form-control" name="fname" type="text"
                           aria-describedby="nameHelp" placeholder="Enter first name" required>
                </div>

                <div class="col-md-6">
                    <label>Last name</label>
                    <input class="form-control" name="lname" type="text"
                           aria-describedby="nameHelp" placeholder="Enter last name" required>
                </div>
            </div>
            </div>

            <div class="form-group">
                <label>Email address</label>
                <input class="form-control" name="email" type="email" aria-describedby="emailHelp"
                       placeholder="Enter email">
            </div>

            <div class="form-group">
                <div class="form-row">
                    <div class="col-md-6">
                        <label>Password</label>
                        <input class="form-control" name="password" type="password"
                               placeholder="Password">
                    </div>

                    <div class="col-md-6">
                        <label>Confirm password</label>
                        <input class="form-control" name="confirm_pass" type="password"
                               placeholder="Confirm password">
                    </div>
                </div>
            </div>
            <button class="btn btn-primary btn-block">Register</button>
        </g:form>

        <div class="text-center">
            <g:link class="d-block small mt-3" controller="user" action="login">Login Page</g:link>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="../vendor/jquery/jquery.min.js"></script>
<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Core plugin JavaScript-->
<script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

</body>
</html>