<%--
  Created by IntelliJ IDEA.
  User: illusionizt
  Date: 11/27/2017
  Time: 7:34 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="utf-8">
    %{--<meta name="viewport" content="width=device-width, initial-scale=1">--}%
    <title>K9Club | Services</title>
    <link rel="icon" href="${resource(dir: "images/k9", file: "favicon.ico")}">
    <link rel="shortcut icon" href="${resource(dir: "images/k9", file: "favicon.ico")}">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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

        $(window).load(function () {
            $('.slider')._TMS({
                show: 0,
                pauseOnHover: false,
                prevBu: '.prev',
                nextBu: '.next',
                playBu: false,
                duration: 800,
                preset: 'fade',
                pagination: true,//'.pagination',true,'<ul></ul>'
                pagNums: false,
                slideshow: 8000,
                numStatus: false,
                banners: true,
                waitBannerAnimation: false,
                progressBar: false
            })
        });
    </script>
</head>

<body>

<g:render template="/templates/mainHeader"/>

<div class="content page1">
    <div class="container_12">
        <div class="grid_7">
            <h2>We Recommend</h2>
            <br>
            <g:each in="${s}" var="i">
                <div class="clear he2"></div>
                <img src="${resource(dir: "uploads", file: "${i.filename}")}" alt="" class="img_inner fleft i1">

                <div class="extra_wrapper">
                    <p style="font-size: 22px">
                        <a href="#">${i.title}</a>
                    </p>
                    ${i.short_detail}
                    <div class="clear"></div>
                    <button class="btn btn-warning" data-toggle="collapse" data-target="#${i.id}">More</button>
                </div>

                <div class="clear"></div>

                <div id="${i.id}" class="collapse">
                    ${i.full_detail}
                </div>
            </g:each>
        </div>

        <div class="grid_4 prefix_1">
            <h2 class="ic1">Features</h2>
            <ul class="list l1">
                <li>
                    <g:each in="${m}" var="i" status="counter">
                        <div class="clear"></div>
                        <g:if test="${counter%2==0}">
                        <span>
                            <time datetime="2017-01-01">${counter+1}</time>
                        </span>

                        <div class="extra_wrapper">
                            <p style="font-size: 20px">
                                <a href="#">${i.title}</a>
                            </p>
                            <p>${i.sub_title}</p>
                        </div>
                        </g:if>

                        <g:else>
                            <span class="cnt">
                                <time datetime="2017-01-01">${counter+1}</time>
                            </span>

                            <div class="extra_wrapper">
                                <p style="font-size: 20px">
                                    <g:link controller="blog" action="index" rel="nofollow">${i.title}</g:link>
                                </p>
                                <p>${i.sub_title}</p>
                            </div>
                        </g:else>
                    </g:each>
                </li>
            </ul>
        </div>
    </div>
</div>



%{--
<div class="content page1">
    <div class="container_12">
        <a href="#" class="next"></a><a href="#" class="prev"></a>

        <h2>Special Services</h2>

        <div class="clear"></div>
        <ul class="carousel1">
            <g:each in="${t}" var="i">
                <li class="grid_4">
                    <div class="pad2"><img src="../images/k9/page3_img3.jpg" class="img_inner fleft">

                        <div class="extra_wrapper">
                            <div class="text2 col2"><a href="#">${i.title}</a></div>
                            ${i.short_detail}
                        </div>
                    </div>
                </li>
            </g:each>
        </ul>
    </div>
</div>
--}%

<g:render template="/templates/mainFooter"/>

</body>
</html>