<%--
  Created by IntelliJ IDEA.
  User: illusionizt
  Date: 12/4/2017
  Time: 7:17 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>K9Club | Blog</title>
    <link rel="icon" href="${resource(dir: "images/k9", file: "favicon.ico")}">
    <link rel="shortcut icon" href="${resource(dir: "images/k9", file: "favicon.ico")}">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link href="${resource(dir: 'vendor/bootstrap/css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'blog-post.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">

    <script src="${resource(dir: "js", file: "jquery.js")}"></script>
    <script src="${resource(dir: "js", file: "jquery-migrate-1.1.1.js")}"></script>
    <script src="${resource(dir: "js", file: "superfish.js")}"></script>
    <script src="${resource(dir: "js", file: "jquery.equalheights.js")}"></script>
    <script src="${resource(dir: "js", file: "jquery.easing.1.3.js")}"></script>
    <script src="${resource(dir: "js", file: "jquery.ui.totop.js")}"></script>

    <script>
        jQuery(document).ready(function () {
            $().UItoTop({
                easingType: 'easeOutQuart'
            });
        });

    </script>
    <r:layoutResources/>
</head>

<body>

<g:render template="/templates/mainHeader"/>

<!-- Page Content -->
<div class="content page1">
    <div class="container">
        <div class="row">
            <!-- Post Content Column -->
            <div class="col-lg-8">
                <!-- Title -->
                <h2>${r.title}</h2>
                <!-- Author -->
                <p class="lead">
                    by
                    <a href="#">Admin</a>
                </p>
                <hr>
                <!-- Date/Time -->
                %{--<p>Posted on January 1, 2017 at 12:00 PM</p>--}%
                %{--<hr>--}%
                <!-- Preview Image -->
                <img class="img-fluid rounded" src="${resource(dir: "uploads", file: "${r.filename}")}" alt="">
                <hr>
                <!-- Post Content -->
                <div style="color: #000000">${r.description}</div>
                <hr>
            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
</div>

<g:render template="/templates/mainFooter"/>

<!-- Bootstrap core JavaScript -->
<script src="${resource(dir: "vendor/jquery", file: "jquery.min.js")}"></script>
<script src="${resource(dir: "vendor/bootstrap/js", file: "bootstrap.bundle.min.js")}"></script>

</body>
</html>