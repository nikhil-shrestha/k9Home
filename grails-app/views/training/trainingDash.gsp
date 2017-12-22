<%--
  Created by IntelliJ IDEA.
  User: illusionizt
  Date: 12/3/2017
  Time: 5:05 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Dashboard</title>
    <!-- Bootstrap core CSS-->
    <link href="${resource(dir: 'vendor/bootstrap/css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <!-- Custom fonts for this template-->
    <link href="${resource(dir: 'vendor/font-awesome/css', file: 'font-awesome.min.css')}" rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="${resource(dir: 'css', file: 'sb-admin.css')}" rel="stylesheet">
    <ckeditor:resources/>
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">

<g:render template="/templates/navbar"/>

<div class="content-wrapper">
    <div class="container-fluid">
        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="#">Dashboard</a>
            </li>
            <li class="breadcrumb-item">
                <a href="#">Training</a>
            </li>
            <li class="breadcrumb-item active">View</li>
        </ol>

        <!-- Example DataTables Card-->
        <div class="card mb-3">
            <div class="card-header">
                <i class="fa fa-table"></i> Data Table Example</div>

            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <tbody>
                        <tr align="center">
                            <th>Title</th>
                            <th>Sub Description</th>
                            <th>Description</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                        </tbody>
                        <g:each in="${r}" var="i">
                            <tr>
                                <td>${i.title}</td>
                                <td>${i.short_detail}</td>
                                <td>${i.full_detail}</td>
                                <td align="center">
                                    <g:form controller="training" action="edit" id="${i.id}">
                                        <button  class="btn btn-primary" onclick="">Edit</button>
                                    </g:form>
                                </td>
                                <td align="center">
                                    <g:form controller="training" action="delete" id="${i.id}">
                                        <button  class="btn btn-danger" onclick="">Delete</button>
                                    </g:form>
                                </td>
                            </tr>
                        </g:each>
                    </table>
                </div>
            </div>
        </div>
    </div>


    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <g:render template="/templates/dashFooter"/>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <g:render template="/templates/logout"/>
    <!-- Bootstrap core JavaScript-->
    <script src="${resource(dir: "vendor/jquery", file: "jquery.min.js")}"></script>
    <script src="${resource(dir: "vendor/bootstrap/js", file: "bootstrap.bundle.min.js")}"></script>
    <!-- Core plugin JavaScript-->
    <script src="${resource(dir: "vendor/jquery-easing", file: "jquery.easing.min.js")}"></script>
    <!-- Custom scripts for all pages-->
    <script src="${resource(dir: "js", file: "sb-admin.min.js")}"></script>

    <!-- Custom scripts for this page-->
    <!-- Toggle between fixed and static navbar-->
    <script>
        $('#toggleNavPosition').click(function () {
            $('body').toggleClass('fixed-nav');
            $('nav').toggleClass('fixed-top static-top');
        });
    </script>

</div>
</body>
</html>