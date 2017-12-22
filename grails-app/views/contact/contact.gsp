<%--
  Created by IntelliJ IDEA.
  User: illusionizt
  Date: 11/27/2017
  Time: 7:33 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>K9Club | Contacts</title>
    <meta charset="utf-8">
    <link rel="icon" href="${resource(dir: "images/k9", file: "favicon.ico")}">
    <link rel="shortcut icon" href="${resource(dir: "images/k9", file: "favicon.ico")}">

    <link href="${resource(dir: 'vendor/bootstrap/css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'form.css')}" type="text/css">

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
</head>

<body>

<g:render template="/templates/mainHeader"/>
<div class="content pt1">
    <div class="container_12">
        <div class="grid_6">
            <h2>Contact Info</h2>
            <br>

            <div class="map">
                <figure class="img_inner">
                    <iframe src="https://maps.google.com/maps?q= K 9 Patan 44700 Nepal&t=&z=13&ie=UTF8&iwloc=&output=embed"></iframe>
                </figure>
                <address>
                    <dl>
                        <dt>
                            <p>K9 Dog Training & Care<br>
                                Patan 44700,<br>
                                Nepal
                            </p>
                        </dt>
                        <dd><span>Telephone:</span>+977 1-5552179</dd>
                        <dd><span></span>+977 985-107-8032</dd>
                    </dl>
                </address>
            </div>
        </div>

        <div class="grid_5 prefix_1">
            <h2 class="ic1">Contact Form</h2>
            <g:form id="form" controller="contact" action="addContact">
            %{--<form id="form" href="">--}%
            %{-- <div class="success_wrapper">
                 <div class="success">Contact form submitted!<br>
                     <strong>We will be in touch soon.</strong>
                 </div>
             </div>--}%
                <fieldset>
                    <label class="name">
                        <input type="text" name="name" placeholder="Name:" id="name" required style="height: 35px; width: 100% ">
                        <br class="clear">
                        <br>
                        %{--<span class="error error-empty">*This is not a valid name.</span>
                        <span class="empty error-empty">*This field is required.</span>--}%
                    </label>

                    <label class="email">
                        <input type="email" name="email" placeholder="E-mail:" id="email" required style="height: 35px; width: 100% ">
                        <br class="clear">
                        <br>
                        %{--<span class="error error-empty">*This is not a valid email address.</span>
                        <span class="empty error-empty">*This field is required.</span>--}%
                    </label>

                    <label class="phone">
                        <input type="tel" minlength="10" name="phone" placeholder="Phone:" id="phone" required style="height: 35px; width: 100% ">
                        <br class="clear">
                        <br>
                        %{--<span class="error error-empty">*This is not a valid phone number.</span>
                        <span class="empty error-empty">*This field is required.</span>--}%
                    </label>

                    <label class="message">
                        <textarea name="message" rows="8" cols="50" required></textarea>
                        <br class="clear">
                        <br>
                        %{--<span class="error">*The message is too short.</span>
                        <span class="empty">*This field is required.</span>--}%
                    </label>

                    <div class="clear"></div>
                    %{--<button data-type="reset" class="btn">Clear</button>--}%
                    <button data-type="submit" class="btn btn-primary">Send</button>

                    <div class="clear"></div>
                </fieldset>
            </g:form>

        </div>
    </div>
</div>

<g:render template="/templates/mainFooter"/>

</body>
</html>