<%-- 
    Document   : formModifProduit
    Created on : Apr 20, 2021, 12:01:32 AM
    Author     : saad
--%>

<%@page import="pk.models.Produit"%>
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


            <div class="container">

            <%
                if (request.getAttribute("msg") != null) {
            %>

            <h3><%=request.getAttribute("msg")%></h3>  

            <%}%>
            <div id="tt-pageContent">
                <div class="container-indent">
                    <div class="container container-fluid-custom-mobile-padding">
                        <h1 class="tt-title-subpages noborder">UPDATE YOUR PRODUCT</h1>
                    </div>
                </div>
            </div>
            <%
                Session s = HibernateUtil.getSession();
                int idp = Integer.parseInt(request.getParameter("idp"));
                Produit p = (Produit) s.get(Produit.class, idp);

            %>
            <form class="was-validated" action="/Store/ModifProduit" method="post" enctype="multipart/form-data">
                
                <div class="form-group">
                    <label for="validationTextarea" class="control-label">Idp</label>
                    <input type="text" disabled="" name="idp" class="form-control" value="<%=p.getIdp()%>">
                    <input type="hidden" name="idp" value="<%=p.getIdp()%>" class="form-control">
                </div>
                
                <div class="form-group">
                    <label for="validationTextarea" class="control-label">Libelle</label>
                    <input type="text" name="libelle" required="" class="form-control" value="<%=p.getLibelle()%>">
                </div>

                <div class="form-group">
                    <label for="validationTextarea">Marque</label>
                    <input type="text" name="marque" required="" class="form-control" value="<%=p.getMarque()%>">
                </div>

                <div class="mb-3">
                    <label for="validationTextarea">Prix</label>
                    <input type="text" name="prix" required="" class="form-control" value="<%=p.getPrix()%>">
                </div>

                <div class="mb-3">
                    <label for="validationTextarea">Frais d'expedition</label>
                    <input type="text" name="frais" required="" class="form-control" value="<%=p.getFraisexpedition()%>">
                </div>

                <div class="mb-3">
                    <label for="validationTextarea">Description</label>
                    <textarea class="form-control is-invalid" name="description" id="validationTextarea" placeholder="Required example textarea" required><%=p.getDescription()%></textarea>
                    <div class="invalid-feedback">
                        Please enter a message in the textarea.
                    </div>
                </div>

                <div class="custom-control custom-checkbox mb-3">
                    <input type="checkbox" class="custom-control-input" name="disponible" checked="" disabled="">
                    <label class="custom-control-label" for="customControlValidation1" >Disponible</label>

                </div>

                <div class="mb-3">
                    <label for="validationTextarea">Quantite en stock</label>
                    <input type="text" name="qte" required="" class="form-control" value="<%=p.getQtestck()%>">
                </div>




                <div class="mb-3">
                    <select class="custom-select" name="cat">
                        <option value="">Choisir une categorie...</option>
                        <%                           
                            List<Categorie> cats = s.createQuery("From Categorie").list();
                            for (Categorie c : cats) {
                        %>
                        <option value="<%=c.getIdcat()%>"<%=c.getIdcat()==p.getCategorie().getIdcat() ? "selected" :"" %>><%=c.getLibelle()%></option>
                        <%}%>
                    </select>

                </div>

                <div class="custom-file mb-3">
                    
                    <input type="file" class="form-control" name="img1" id="validatedCustomFile" value="<%=p.getImages().get(0).getUrl()%>" required>
                    <label class="custom-file-label" for="validatedCustomFile"><img src="/Store/images/product/<%=p.getImages().get(0).getUrl()%>" width="60px" height="30px">Choisir un image pour modifier ...</label>

                </div>





                <div class="input-group is-invalid">
                    <div class="custom-file">
                        
                        <input type="file" class="custom-file-input" id="validatedInputGroupCustomFile" name="img2" value="<%=p.getImages().get(0).getUrl2()%>">
                        <label class="custom-file-label" for="validatedInputGroupCustomFile"><img src="/Store/images/product/<%=p.getImages().get(0).getUrl2()%>" width="60px" height="30px">Choisir l'image pour modifier...</label>
                    </div>

                    <div class="input-group-append">
                        <button class="btn btn-outline-secondary" type="submit">Sauvgarder</button>
                    </div>
                </div>

            </form>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
