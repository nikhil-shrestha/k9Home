<%--
  Created by IntelliJ IDEA.
  User: illusionizt
  Date: 11/27/2017
  Time: 7:33 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>K9Club | About Us</title>
    <meta charset="utf-8">
    <link rel="icon" href="${resource(dir: "images/k9", file: "favicon.ico")}">
    <link rel="shortcut icon" href="${resource(dir: "images/k9", file: "favicon.ico")}">

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
    <script src="${resource(dir: "js", file: "jquery.js")}"></script>
    <script src="${resource(dir: "js", file: "jquery-migrate-1.1.1.js")}"></script>
    <script src="${resource(dir: "js", file: "superfish.js")}"></script>
    <script src="${resource(dir: "js", file: "jquery.equalheights.js")}"></script>
    <script src="${resource(dir: "js", file: "jquery.easing.1.3.js")}"></script>
    <script src="${resource(dir: "js", file: "jquery.ui.totop.js")}"></script>

    <script type="text/JavaScript">
        <!--
        function AutoRefresh(t) {
            setTimeout("location.reload(true);", t);
        }

        //-->

        jQuery(document).ready(function () {
            $().UItoTop({
                easingType: 'easeOutQuart'
            });
        });
    </script>
</head>

<body >

<g:render template="/templates/mainHeader"/>

<div class="content page1">
    <div class="container_12">
        <div class="grid_7">
            <h2>About Us</h2>
            <br>

            <div class="clear"></div>
            ${w.description}<br>
        </div>

        <div class="grid_4 prefix_1">
            <h2 class="ic1">What we offer</h2>
            <ul class="list l1">
                <li>
                    <g:each in="${r}" var="i" status="counter">
                        <g:if test="${counter % 2 == 0}">
                            <span class="cnt">
                                <time datetime="2017-01-01">${counter + 1}</time>
                            </span>

                            <div class="extra_wrapper">
                                <p style="font-size: 20px">
                                    <a href="#">${i.title}</a>
                                </p>

                                ${i.description}
                            </div>
                        </g:if>
                        <g:else>
                            <span>
                                <time datetime="2017-01-01">${counter + 1}</time>
                            </span>

                            <div class="extra_wrapper">
                                <p style="font-size: 20px">
                                    <g:link controller="blog" action="index" rel="nofollow">${i.title}</g:link>
                                </p>

                                ${i.description}
                            </div>
                        </g:else>
                    </g:each>
                </li>
            </ul>
        </div>
    </div>
</div>

<div class="bottom_block bot1">
    <div class="container_12">
        <div class="grid_12">
            <h2>Our Staff</h2>
        </div>

        <g:each in="${s}" var="i">
            <div class="grid_4">
                <div class="pad2"><img src="${resource(dir: "uploads", file: "${i.filename}")}" alt=""
                                       class="img_inner fleft">

                    <div class="extra_wrapper">
                        <div class="col2">
                            <a href="#">${i.name}</a>
                        </div>
                        ${i.title}
                    </div>
                </div>
            </div>
        </g:each>
    </div>
</div>

<g:render template="/templates/mainFooter"/>

</body>
</html>