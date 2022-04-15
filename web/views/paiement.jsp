<%-- 
    Document   : paiement
    Created on : Mar 23, 2021, 11:20:25 PM
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
                    <li>Check Out</li>
                </ul>
            </div>
        </div>
        <div id="tt-pageContent">
            <div class="container-indent">
                <div class="container container-fluid-custom-mobile-padding">
                    <h1 class="tt-title-subpages noborder">Ajouter Votre carte bancaire</h1>
                    <div class="tt-shopping-layout">

                        <div class="tt-wrapper">
                            <h6 class="tt-title">Payer votre commande en toute en securite </h6>
                            <div class="form-default">
                                <%
                                                     if(request.getAttribute("msg")!=null){
                                                         %>
                                                         <h3 style="color: red"><%=request.getAttribute("msg")%></h3>
                                                         <%
                                                     }
                                                    %>
                                <form action="/Store/Paiement">
                                    <div class="form-group">
                                        <label for="cartVisa" class="control-label">Donnees de votre carte visa *</label>
                                        <input type="text" placeholder="Numero de la carte" name="nocarte" class="form-control" id="shopInputFirstName">
                                    </div>
                                    <div class="form-group">

                                        <input  type="text" placeholder="Date de validite" name="datecarte" class="form-control" id="shopInputLastName">
                                    </div>
                                    <div class="form-group">

                                        <input type="text" placeholder="crypto" name="crypto" class="form-control" id="shopCompanyName">
                                    </div>
                                    <input type="hidden" name="adresse1" value="<%=request.getParameter("adresse1")%>">
                                    <input type="hidden" name="adresse2" value="<%=request.getParameter("adresse2")%>">
                                    <input type="hidden" name="ville" value="<%=request.getParameter("ville")%>">
                                    <input type="hidden" name="pays" value="<%=request.getParameter("pays")%>">
                                    <input type="hidden" name="codepostale" value="<%=request.getParameter("codepostale")%>">
                                    
                                    
                                    <div class="row tt-offset-21">
                                        <div class="col-auto">
                                            <button type="submit" class="btn">Payer</button>
                                        </div>
                                        <div class="col-auto align-self-center">
                                            or	<a href="#" class="tt-link">Cancel</a>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
