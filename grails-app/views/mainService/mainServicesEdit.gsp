<%--
  Created by IntelliJ IDEA.
  User: illusionizt
  Date: 12/3/2017
  Time: 8:12 PM
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
                <a href="#">Features</a>
            </li>
            <li class="breadcrumb-item active">Edit</li>
        </ol>

        <!-- Example DataTables Card-->
        <div class="card mb-3">
            <div class="card-header">
                <i class="fa fa-table"></i> Update to Database</div>

            <div class="card-body">
                <div class="table-responsive">
                    <g:form controller="mainService" action="update">
                        <input type="hidden" name="id" value="${e.id}" id="id"/>
                        <input type="hidden" name="version" value="0" id="version"/>
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <tr>
                                <th>Title</th>
                                <td>
                                    <g:textField name="title" id="title" value="${e.title}"
                                                 style="width:500px; height:30px;"/>
                                    %{--<input type="text" name="title" style="width:750px; height:30px;">--}%
                                </td>
                            </tr>

                            <tr>
                                <th>Sub Title</th>
                                <td>
                                    <g:textArea name="sub_title" id="sub_title" value="${e.sub_title}"
                                                 rows="5" cols="67"/>
                                    %{--<input type="text" name="title" style="width:750px; height:30px;">--}%
                                </td>
                            </tr>
                        </table>
                        <button class="btn btn-primary">SAVE</button>
                    </g:form>
                </div>
            </div>
            <div class="card-footer"></div>
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

</div>

</body>
</html>