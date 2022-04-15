<%-- 
    Document   : formAddBlog
    Created on : Mar 30, 2021, 6:47:36 PM
    Author     : saad
--%>

<%@page import="pk.models.Client"%>
<%@page import="pk.models.Categorie"%>
<%@page import="java.util.List"%>
<%@page import="pk.dao.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>
        <%
            if (session.getAttribute("clt") != null) {
        %>
        <div class="tt-breadcrumb">
            <div class="container">
                <ul>
                    <li><a href="/Store/views/index.jsp">Home</a></li>
                    <li>Add Product</li>
                </ul>
            </div>
        </div>
        <div id="tt-pageContent">
            <div class="container-indent">
                <div class="container">
                    <div class="container container-fluid-custom-mobile-padding">
                        <h1 class="tt-title-subpages noborder">ADD NEW BLOG</h1>
                    </div>
                    <%                        if (request.getAttribute("msg") != null) {
                    %>
                    <h3 style="color: green; text-align: center;"><%=request.getAttribute("msg")%></h3>  
                    <%}%>
               
                
                <div class="form-default">
                    <form class="customer_login" action="/Store/AddBlog" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="validationTextarea" class="control-label">Titre</label>
                            <input type="text" name="titre" required="" class="form-control">
                        </div>
                       <div class="form-group">
                            <label for="validationTextarea">Text</label>
                            <textarea class="form-control" name="text" id="validationTextarea" rows="8" placeholder="Required example textarea" required></textarea>
                        </div>                    
                        <div class="form-group">
                            <label class="custom-file-label" for="validatedCustomFile">Choisir l'image principale de votre produit</label>
                            <input type="file" class="form-control" name="img" id="validatedCustomFile" required>
                        </div>
                        <div class="input-group-append">
                            <button class="btn btn-outline-secondary" type="submit">Ajouter</button>
                        </div>
                    </form>
                </div>
            </div>
            <%}%>

            <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
