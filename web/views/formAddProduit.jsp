<%-- 
    Document   : formAddProduit
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
                        <h1 class="tt-title-subpages noborder">ADD A NEW PRODUCT</h1>
                    </div>
                    <%                        if (request.getAttribute("msg") != null) {
                    %>
                    <h3 style="color: green; text-align: center;"><%=request.getAttribute("msg")%></h3>  
                </div>
                <%}%>
                <div class="form-default">
                    <form class="customer_login" action="/Store/AddProduit" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="validationTextarea" class="control-label">Libelle</label>
                            <input type="text" name="libelle" required="" class="form-control">
                        </div>

                        <div class="form-group">
                            <label for="validationTextarea">Marque</label>
                            <input type="text" name="marque" required="" class="form-control">
                        </div>

                        <div class="form-group">
                            <label for="validationTextarea">Prix</label>
                            <input type="number" name="prix" required="" class="form-control">
                        </div>

                        <div class="form-group">
                            <label for="validationTextarea">Frais d'expedition</label>
                            <input type="number" name="frais" required="" class="form-control">
                        </div>

                        <div class="form-group">
                            <label for="validationTextarea">Description</label>
                            <textarea class="form-control" name="description" id="validationTextarea" placeholder="Required example textarea" required></textarea>
                        </div>
                        <div class="custom-control custom-checkbox mb-3">
                            <input type="checkbox" class="custom-control-input" checked="" disabled="" name="disponible">
                            <label class="custom-control-label" for="customControlValidation1"><strong>Disponible</strong></label>
                        </div>
                        <div class="form-group">
                            <label for="validationTextarea">Quantite en stock</label>
                            <input type="number" name="qte" required="" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="validationTextarea">Categorie</label>
                            <select class="form-control" required name="cat">
                                <option value="">Choisir une categorie</option>
                                <%
                                    Session s = HibernateUtil.getSession();
                                    List<Categorie> cats = s.createQuery("From Categorie").list();
                                    for (Categorie c : cats) {
                                %>
                                <option value="<%=c.getIdcat()%>"><%=c.getLibelle()%></option>
                                <%}%>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="custom-file-label" for="validatedCustomFile">Choisir l'image principale de votre produit</label>
                            <input type="file" class="form-control" name="img1" id="validatedCustomFile" required>
                        </div>
                        <div class="form-group">
                            <label class="custom-file-label" for="validatedInputGroupCustomFile">Choisir Image2</label>
                            <input type="file" class="form-control" id="validatedInputGroupCustomFile" name="img2">
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
