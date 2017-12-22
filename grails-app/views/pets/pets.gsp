<%--
  Created by IntelliJ IDEA.
  User: illusionizt
  Date: 12/3/2017
  Time: 3:28 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>K9Club | About Us</title>
    <link rel="icon" href="${resource(dir: "images/k9", file: "favicon.ico")}">
    <link rel="shortcut icon" href="${resource(dir: "images/k9", file: "favicon.ico")}">
    %{--<link rel="stylesheet" href="${resource(dir: 'css', file: 'heroic-features.css')}" type="text/css">--}%
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="${resource(dir: 'vendor/bootstrap/css', file: 'bootstrap.min.css')}" type="text/css">

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
    <script src="${resource(dir: "js", file: "jquery.js")}"></script>
    <script src="${resource(dir: "js", file: "jquery-migrate-1.1.1.js")}"></script>
    <script src="${resource(dir: "js", file: "superfish.js")}"></script>
    <script src="${resource(dir: "js", file: "jquery.equalheights.js")}"></script>
    <script src="${resource(dir: "js", file: "jquery.easing.1.3.js")}"></script>
    <script src="${resource(dir: "js", file: "jquery.ui.totop.js")}"></script>
    <!-- Custom styles for this template -->
   %{-- <link href="../css/heroic-features.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/style.css">
    <script src="../js/jquery.js"></script>
    <script src="../js/jquery-migrate-1.1.1.js"></script>
    <script src="../js/superfish.js"></script>
    <script src="../js/jquery.equalheights.js"></script>
    <script src="../js/jquery.easing.1.3.js"></script>
    <script src="../js/jquery.ui.totop.js"></script>--}%

    <script>
        jQuery(document).ready(function () {
            $().UItoTop({
                easingType: 'easeOutQuart'
            });
        });
    </script>
</head>


<body>

<g:render template="/templates/mainHeader"/>

<!-- Page Content -->
<div class="content">
    <div class="container_12">
        <h2 class="ic1">Available Breeds</h2>

        <div class="clear"></div>

        <div class="row text-center">

            <g:each in="${r}" var="i">
                <div class="grid_4">
                    <div class="card1" style="width: 80%">
                        <img class="card-img-top" src="${resource(dir: "uploads", file: "${i.filename}")}"
                             alt="Card image cap">

                        <div class="card-body">
                            <div class="text2 col2"><a href="#">${i.pet_name}</a></div>

                            <p class="card-text">${i.details}</p>
                        </div>

                    </div>
                </div>
            </g:each>
        </div>
    </div>
</div>
%{--<!-- Page Content -->--}%
%{--<div class="content">--}%
%{--<div class="container_12">--}%
%{--<!-- Page Features -->--}%
%{--<div class="row text-center">--}%
%{--<div class="col-lg-3 col-md-6 mb-4">--}%
%{--<div class="card1">--}%
%{--<img class="card-img-top" src="../images/k9/page3_img2.jpg" alt="">--}%

%{--<div class="card-body">--}%
%{--<h4 class="card-title">Card title</h4>--}%

%{--<p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.</p>--}%
%{--</div>--}%

%{--<div class="card-footer">--}%
%{--<a href="#" class="btn btn-primary">Find Out More!</a>--}%
%{--</div>--}%
%{--</div>--}%
%{--</div>--}%
%{--</div>--}%
%{--<!-- /.row -->--}%

%{--</div>--}%
%{--</div>--}%
%{--<!-- /.container -->--}%


<g:render template="/templates/mainFooter"/>

<!-- Bootstrap core JavaScript -->
<script src="../vendor/jquery/jquery.min.js"></script>
<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>