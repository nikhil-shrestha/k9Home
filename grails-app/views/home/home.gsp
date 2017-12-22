<%--
  Created by IntelliJ IDEA.
  User: illusionizt
  Date: 11/27/2017
  Time: 6:30 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>K9Club</title>
    <meta charset="utf-8">
    <link rel="icon" href="${resource(dir: "images/k9", file: "favicon.ico")}">
    <link rel="shortcut icon" href="${resource(dir: "images/k9", file: "favicon.ico")}">

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'card.css')}" type="text/css">

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'slider.css')}" type="text/css">
    %{--<link rel="stylesheet" href="css/slider.css">--}%
    %{--<script src="js/jquery.js"></script>--}%
    %{--<script src="js/jquery-migrate-1.1.1.js"></script>--}%
    %{--<script src="js/superfish.js"></script>--}%
    %{--<script src="js/jquery.carouFredSel-6.1.0-packed.js"></script>--}%
    %{--<script src="js/jquery.equalheights.js"></script>--}%
    %{--<script src="js/jquery.easing.1.3.js"></script>--}%
    %{--<script src="js/tms-0.4.1.js"></script>--}%
    %{--<script src="js/jquery.ui.totop.js"></script>--}%

    <script src="${resource(dir: "js", file: "jquery.js")}"></script>
    <script src="${resource(dir: "js", file: "jquery-migrate-1.1.1.js")}"></script>
    <script src="${resource(dir: "js", file: "superfish.js")}"></script>
    <script src="${resource(dir: "js", file: "jquery.carouFredSel-6.1.0-packed.js")}"></script>
    <script src="${resource(dir: "js", file: "jquery.equalheights.js")}"></script>
    <script src="${resource(dir: "js", file: "jquery.easing.1.3.js")}"></script>
    <script src="${resource(dir: "js", file: "tms-0.4.1.js")}"></script>
    <script src="${resource(dir: "js", file: "jquery.ui.totop.js")}"></script>

    <script>
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


        $(window).load(
            function () {
                $('.carousel1').carouFredSel({
                    auto: false, prev: '.prev', next: '.next', width: 960,
                    items: {
                        visible: {min: 3, max: 3},
                        height: 'auto', width: 300,
                    },
                    responsive: true,
                    scroll: 1,
                    mousewheel: false,
                    swipe: {onMouse: true, onTouch: true}
                });
            });

        jQuery(document).ready(function () {
            $().UItoTop({easingType: 'easeOutQuart'});
        });

    </script>
</head>

<body>

<g:render template="/templates/mainHeader"/>

<div class="top_block">
    <div class="slider-relative">
        <div class="slider-block">
            <div class="slider">
                <ul class="items">
                    <g:each in="${s}" var="i">
                        <li><img src="${resource(dir: "uploads", file: "${i.filename}")}" alt="">

                            <div class="banner">${i.img_title}

                                <p>${i.img_description}</p></div>
                        </li>
                    </g:each>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="page1_block">
    <div class="container_12">
        <div class="grid_6">
            <h2>Welcome to Our Site</h2><br>
            %{--<g:img dir="D:/uploads/" file="carousel1_img1.jpg" alt="" class="img_inner fleft"/>--}%
            <img src="${resource(dir: "uploads", file: "${h.filename}")}"/>
            %{--<div class="extra_wrapper style1">
                <p class="text1">
                    <a href="#" rel="nofollow">Click here</a> for more info about this website.
                </p>
            </div>--}%
            <p>${h.description}</p>
        </div>

        <div class="grid_5 prefix_1">
            <h2 class="ic1">Latest News</h2>
            <ul class="list l1">
                <li>
                    <g:each in="${b}" var="i" status="counter">
                        <g:if test="${counter % 2 == 0}">
                            <span class="cnt">
                                <time datetime="2017-01-01">${counter + 1}</time>
                            </span>

                            <div class="extra_wrapper">
                                <p style="font-size: 20px">
                                    <g:link controller="blog" action="index" rel="nofollow">${i.title}</g:link>
                                </p>

                                <p>${i.less_description}</p>
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

                                <p>${i.less_description}</p>
                            </div>
                        </g:else>
                    </g:each>
                </li>
            </ul>
        </div>
    </div>
</div>

<!--=======content================================-->
<div class="content page1">
    <div class="container_12">
        <a href="#" class="next"></a><a href="#" class="prev"></a>

        <h2>Pets for Adoption</h2>

        <div class="clear"></div>
        <ul class="carousel1">
            <g:each in="${p}" var="i">
                <li class="grid_4">
                    <div class="card1" style="width: 75%">
                        <img class="card-img-top" src="${resource(dir: "uploads", file: "${i.filename}")}">

                        <div class="card-body">
                            <div class="text2 col2" align="center">
                                <g:link controller="pets" action="index">${i.pet_name}</g:link>
                            </div>
                        </div>
                    </div>
                </li>
            </g:each>
        </ul>
    </div>
</div>

<div class="bottom_block">
    <div class="container_12">
        <div class="grid_6">
            <h2>Pet Care Tips</h2><br>
            ${t.tips}
        </div>

        <div class="grid_4 prefix_2">
            <h2 class="ic1">Any Question?</h2>
            <img src="images/k9/page1_img4.jpg"
                 alt="" class="fleft img_inner"><br>

            <div class="extra_wrapper">
                <div class="cont">
                    Call Us Free:
                    %{--<span>01 5552179</span>--}%
                    <span>985 107 8032</span>
                </div>
            </div>

            <div class="clear"></div>
        </div>
    </div>
</div>

<g:render template="/templates/mainFooter"/>

</body>
</html>