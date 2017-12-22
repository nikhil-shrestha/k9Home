<%--
  Created by IntelliJ IDEA.
  User: illusionizt
  Date: 12/3/2017
  Time: 4:34 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>K9Club | About Us</title>
    <meta charset="utf-8">
    <link rel="icon" href="/images/k9/favicon.ico">
    <link rel="shortcut icon" href="/images/k9/favicon.ico">
    <link rel="stylesheet" href="../css/style.css">
    <script src="../js/jquery.js"></script>
    <script src="../js/jquery-migrate-1.1.1.js"></script>
    <script src="../js/superfish.js"></script>
    <script src="../js/jquery.equalheights.js"></script>
    <script src="../js/jquery.easing.1.3.js"></script>
    <script src="../js/jquery.ui.totop.js"></script>

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

<div class="page1_block nb">
    <div class="container_12">
        %{--<div class="grid_7">--}%
        <h2>Training Days</h2>
        <g:each in="${r}" var="i">
            <br>
            <img src="../images/k9/page2_img1.jpg" alt="" class="img_inner fleft i1">

            <div class="extra_wrapper">
                <p class="col1">
                    <a href="#">${i.title}</a>
                </p>
                ${i.short_detail}
            </div>

            <div class="clear"></div>
            ${i.full_detail}
            %{--<a href="#" class="btn">More</a>--}%
        </g:each>
    %{--</div>--}%
    </div>
</div>

<g:render template="/templates/mainFooter"/>

</body>
</html>