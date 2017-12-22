<%--
  Created by IntelliJ IDEA.
  User: illusionizt
  Date: 11/29/2017
  Time: 3:01 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
                <a href="#">About</a>
            </li>
            <li class="breadcrumb-item active">Add</li>
        </ol>

        <!-- Example DataTables Card-->
        <div class="card mb-3">
            <div class="card-header">
                <i class="fa fa-table"></i> Add to Database</div>

            <div class="card-body">
                <div class="table-responsive">
                    <g:form controller="about" action="saveOffers">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <tr>
                                <th>Title</th>
                                <td>
                                    <g:textField name="title" style="width:500px; height:30px;"/>
                                    %{--<input type="text" name="title" style="width:750px; height:30px;">--}%
                                </td>
                            </tr>
                            <tr>
                                <th>Description</th>
                                <td>
                                    <ckeditor:editor name="description" height="400px" width="80%" id="description">
                                    </ckeditor:editor>
                                </td>
                            </tr>

                        </table>
                        <button class="btn btn-primary" onclick="saveCkEditorContent();"> SAVE</button>
                    </g:form>
                </div>
            </div>

            <div class="card-footer small text-muted"></div>
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

    <script>
        function saveCkEditorContent() {
            var value = CKEDITOR.instances['description'].getData();
//            alert(value);
            var URL = "${createLink(controller:'about',action:'ckEditorData')}";
            $.ajax({

                url: URL,
                type: "POST",

                data: {cv: value},
                success: function (resp) {
                    console.log("success");
                    console.log(resp);


                }
            });
        }
    </script>
</div>
</body>
</html>