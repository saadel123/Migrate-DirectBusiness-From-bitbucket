<%-- 
    Document   : mescommandes
    Created on : Mar 30, 2021, 1:04:38 AM
    Author     : saad
--%>

<%@page import="pk.models.Adresse"%>
<%@page import="java.util.List"%>
<%@page import="pk.models.Commande"%>
<%@page import="org.hibernate.Query"%>
<%@page import="pk.dao.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="pk.models.Client"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            if (session.getAttribute("clt") == null) {
                request.setAttribute("msg", "il faut se connecter ou s'inscrire pour passer la commande");
                request.getRequestDispatcher("/views/FormLogin.jsp").forward(request, response);
            }
            Client c = (Client) session.getAttribute("clt");
        %>

        <jsp:include page="header.jsp"></jsp:include>
        <%
            if (request.getAttribute("msg") != null) {
        %>

        <%
            }
        %>
        <%
            Session s = HibernateUtil.getSession();
            Query q = s.createQuery("select c from Commande c where c.client.idc=:idc");
            q.setInteger("idc", c.getIdc());
            List<Commande> cmds = q.list();
        %>

        <div class="tt-breadcrumb">
            <div class="container">
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li>Account</li>
                </ul>
            </div>
        </div>
        <div id="tt-pageContent">
            <div class="container-indent">
                <div class="container container-fluid-custom-mobile-padding">
                    <%
                        if (request.getAttribute("msg") != null) {
                    %>

                    <h1 class="tt-title-subpages noborder"><%=request.getAttribute("msg")%></h1>
                    <%}%>
                    <div class="tt-shopping-layout">
                        <!--<h2 class="tt-title-border">MY ACCOUNT</h2> -->
                        <div class="tt-wrapper">
                            <h3 class="tt-title">ORDER HISTORY</h3>
                            <div class="tt-table-responsive">
                                <table class="tt-table-shop-01">
                                    <thead>
                                        <tr>
                                            <th>ORDER</th>
                                            <th>DATE</th>
                                            <th>PAYMENT STATUS</th>
                                            <th>FULFILLMENT STATUS</th>
                                            <th>TOTAL</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            for (Commande cmd : cmds) {


                                        %>
                                        <tr>
                                            <td>#<%=cmd.getIdcmd()%></td>
                                            <td><%=cmd.getDatecmd()%></td>
                                            <td><%=cmd.getEtat()%></td>
                                            <td><%=cmd.getEtat()%></td>
                                            <td>$<%=cmd.total()%></td>
                                        </tr>

                                        <%}%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <%
                            Query quer = s.createQuery("from Adresse a where a.client.idc=:cli");
    
                            quer.setInteger("cli", c.getIdc());
                            quer.setFirstResult(2);
                            quer.setMaxResults(1);
                            List<Adresse> a = quer.list();
                        %>

                        <div class="tt-wrapper">
                            <h3 class="tt-title">ACCOUNT DETAILS</h3>
                            <div class="tt-table-responsive">
                                <table class="tt-table-shop-02">
                                    <tbody>
                                        <%
                                            for (Adresse ads : a) {
                                        %>
                                        <tr>
                                            <td>NAME:</td>
                                            <td><%=ads.getClient().getNom()%> </td>
                                        </tr>
                                        <tr>
                                            <td>E-MAIL:</td>
                                            <td><%=ads.getClient().getEmail()%></td>
                                        </tr>
                                        <tr>
                                            <td>ADDRESS:</td>
                                            <td><%=ads.getAdresse()%> </td> 
                                        </tr> 
                                        <tr>
                                            <td> ADDRESS 2:</td> 
                                            <td> <%=ads.getAdresse()%></td>
                                        </tr>

                                        <tr>
                                            <td>CITY:</td>
                                            <td><%=ads.getVille()%></td>
                                        </tr>
                                        <tr>
                                            <td>ZIP:</td>
                                            <td><%=ads.getCodepostale()%></td>
                                        </tr>
                                        <tr>
                                            <td>PHONE:</td>
                                            <td><%=ads.getClient().getTel()%></td>
                                        </tr>
                                        <%}%>
                                    </tbody>
                                </table>
                            </div>
                          
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
