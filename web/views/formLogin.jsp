<%-- 
    Document   : formLogin
    Created on : Mar 15, 2021, 12:30:21 AM
    Author     : saad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>         



            <div class="tt-breadcrumb">
                <div class="container">
                    <ul>
                        <li><a href="/Store/views/index.jsp">Home</a></li>
                        <li>Register</li>
                    </ul>
                </div>
            </div>
            <div id="tt-pageContent">
                <div class="container-indent">
                    <div class="container">
                        <h1 class="tt-title-subpages noborder">ALREADY REGISTERED?</h1>
                        <div class="tt-login-form">
                            <div class="row">
                                <div class="col-xs-12 col-md-6">
                                    <div class="tt-item">
                                        <h2 class="tt-title">NEW CUSTOMER</h2>
                                        <p>
                                            By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.
                                        </p>
                                        <div class="form-group">
                                            <a href="/Store/views/formRegister.jsp" class="btn btn-top btn-border">CREATE AN ACCOUNT</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-md-6">
                                    <div class="tt-item">
                                    <%
                                        if (request.getAttribute("msg") != null) {
                                    %>
                                    <h3 style="color:red"><%=request.getAttribute("msg")%></h3>
                                    <%
                                        }
                                    %>


                                    <h2 class="tt-title">LOGIN</h2>
                                    If you have an account with us, please log in.
                                    <div class="form-default form-top">
                                        <form id="customer_login"  action="/Store/Login" method="post">
                                            <div class="form-group">
                                                <label for="loginInputName">E-MAIL *</label>
                                                <div class="tt-required">* Required Fields</div>
                                                <input type="email" name="email" class="form-control" id="loginInputName" placeholder="Enter Username or E-mail" required="">
                                            </div>
                                            <div class="form-group">
                                                <label for="loginInputEmail">PASSWORD *</label>
                                                <input type="password" name="mdp" class="form-control" id="loginInputEmail" placeholder="Enter Password" required="">
                                            </div>
                                            <div class="row">
                                                <div class="col-auto mr-auto">
                                                    <div class="form-group">
                                                        <button class="btn btn-border" type="submit">LOGIN</button>
                                                    </div>
                                                </div>
                                                <div class="col-auto align-self-end">
                                                    <div class="form-group">
                                                        <ul class="additional-links">
                                                            <li><a href="#">Lost your password?</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
