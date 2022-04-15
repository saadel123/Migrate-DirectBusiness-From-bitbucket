<%-- 
    Document   : formRegister
    Created on : Mar 15, 2021, 1:50:17 AM
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
			<li><a href="index.html">Home</a></li>
			<li>Create An Account</li>
		</ul>
	</div>
</div>
<div id="tt-pageContent">
	<div class="container-indent">
		<div class="container">
			<h1 class="tt-title-subpages noborder">CREATE AN ACCOUNT</h1>
			<div class="tt-login-form">
				<div class="row justify-content-center">
					<div class="col-md-8 col-lg-6">
						<div class="tt-item">
                                                    
							<h2 class="tt-title">PERSONAL INFORMATION</h2>
                                                        <%
                                                    if(request.getAttribute("msg")!=null){
                                                        
                                                        %>
                                                        <h3 style="color:red"><%=request.getAttribute("msg")%></h3>
                                                        <%
                                                        }
                                                %>
							<div class="form-default form-top">
                                                            <form id="customer_login"  action="/Store/Inscription" method="post">
									<div class="form-group">
										<label for="loginInputName">FIRST NAME *</label>
										<div class="tt-required">* Required Fields</div>
                                                                                <input type="text" name="nom" class="form-control" id="loginInputName" placeholder="Enter FIRST NAME" required="">
									</div>
                                                                        <div class="form-group">
										<label for="loginInputName">LAST NAME *</label>						
                                                                                <input type="text" name="prenom" class="form-control" id="loginInputName" placeholder="Enter LAST NAME" required="">
									</div>
                                                                        <div class="form-group">
										<label for="loginInputName">E-MAIL *</label>
                                                                                <input type="email" name="email" class="form-control" id="loginInputName" placeholder="Enter E-mail" required="">
									</div>
									<div class="form-group">
										<label for="loginInputEmail">PASSWORD *</label>
                                                                                <input type="password" name="mdp" class="form-control" id="loginInputEmail" placeholder="Enter Password" required="">
									</div>
									<div class="row">
										<div class="col-auto mr-auto">
											<div class="form-group">
												<button class="btn btn-border" type="submit">create</button>
											</div>
										</div>
										<div class="col-auto align-self-end">
											<div class="form-group">
												<ul class="additional-links">
													<!--<li><a href="#">Lost your password?</a></li>-->
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
