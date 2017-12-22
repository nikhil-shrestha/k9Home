<%--
  Created by IntelliJ IDEA.
  User: illusionizt
  Date: 11/27/2017
  Time: 7:33 PM
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
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'blog-home.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">

    <script src="${resource(dir: "js", file: "jquery.js")}"></script>
    <script src="${resource(dir: "js", file: "jquery-migrate-1.1.1.js")}"></script>
    <script src="${resource(dir: "js", file: "superfish.js")}"></script>
    <script src="${resource(dir: "js", file: "jquery.equalheights.js")}"></script>
    <script src="${resource(dir: "js", file: "jquery.easing.1.3.js")}"></script>
    <script src="${resource(dir: "js", file: "jquery.ui.totop.js")}"></script>
    <!-- Bootstrap core Javascript -->
    %{--<script src="../js/jquery.js"></script>
    <script src="../js/jquery-migrate-1.1.1.js"></script>
    <script src="../js/superfish.js"></script>
    <script src="../js/jquery.equalheights.js"></script>
    <script src="../js/jquery.easing.1.3.js"></script>
    <script src="../js/jquery.ui.totop.js"></script>--}%


    <script>

        function AutoRefresh(t) {
            setTimeout("location.reload(true);", t);
        }

        jQuery(document).ready(function () {
            $().UItoTop({
                easingType: 'easeOutQuart'
            });
        });

    </script>
</head>

<body>

<g:render template="/templates/mainHeader"/>

%{--<div class="content pt1">
    <div class="container_12">
        <div class="grid_7">
            <h2>Blog</h2>
            <br>

            <g:each in="${r}" var="i">
                <div class="blog"><img src="../images/k9/page4_img1.jpg" alt="" class="img_inner fleft i1">

                    <div class="extra_wrapper">
                        <div class="text2 col2">${i.title}</div>
                        ${i.less_description}</div>

                    <div class="clear"></div>

                    <div class="show-hide-text wrapper">
                        <a  id="show-more" class="show-less" href="#show-less">Show less</a>
                        <a  id="show-less" class="show-more" href="#show-more">Show more</a>
                        ${i.description}
                    </div>

                </div>
            </g:each>
        </div>

        <div class="grid_4 prefix_1">
            <h2 class="head1">Recent Posts</h2>
            <ul class="list1">
                <li>
                    <g:each in="${r}" var="i">
                        <span></span>

                        <div class="extra_wrapper">
                            <div class="col1">
                                <a href="#">${i.title}</a>
                                <a href="#" class="col2">Read More</a>
                            </div>
                        </div>
                    </g:each>

                </li>
            </ul>
        </div>
    </div>
</div>--}%

<!-- Page Content -->
<div class="content pt1">
    <div class="container_12">
        <div class="row">
            <!-- Blog Entries Column -->
            <div class="col-md-8">
                <h2>Blog</h2>
            <!-- Blog Post -->
                <g:each in="${r}" var="i">
                    <div class="card mb-4">
                        <img class="card-img-top" src="${resource(dir: "uploads", file: "${i.filename}")}" alt="">

                        <div class="card-body">
                            <div class="text2 col2">${i.title}</div>

                            <p class="card-text">${i.less_description}</p>
                            <g:form controller="blog" action="postPreview" id="${i.id}">
                                <button class="btn btn-primary">Read More &rarr;</button>
                            </g:form>
                        </div>

                        <div class="card-footer text-muted">
                            Posted by
                            <a href="#">Admin</a>
                        </div>
                    </div>
                </g:each>
            <!-- Pagination -->
            %{--<ul class="pagination justify-content-center mb-4">
                <li class="page-item">
                    <a class="page-link" href="#">&larr; Older</a>
                </li>
                <li class="page-item disabled">
                    <a class="page-link" href="#">Newer &rarr;</a>
                </li>
            </ul>--}%
            </div>
            <!-- Sidebar Widgets Column -->
            %{--<div class="col-md-4">
                <!-- Side Widget -->
                <div class="card my-4">
                    <div class="card-header">
                        <h2 class="head1">Recent Posts</h2>
                    </div>

                    <div class="card-body">
                        <ul class="list1">
                            <li>
                                <g:each in="${r}" var="i">
                                    <span></span>

                                    <div class="extra_wrapper">
                                        <div class="col1">
                                            <a href="#">${i.title}</a>
                                        </div>
                                    </div>
                                </g:each>

                            </li>
                        </ul>
                    </div>
                </div>
            </div>--}%
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
</div>
<!-- Bootstrap core JavaScript -->
<script src="../vendor/jquery/jquery.min.js"></script>
<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<g:render template="/templates/mainFooter"/>

</body>
</html>