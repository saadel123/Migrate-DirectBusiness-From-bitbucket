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
            Client clt = (Client) session.getAttribute("clt");
            if (clt == null || clt.getCompte().getRole().equals("client")) {
                request.setAttribute("msg", "il faut se connecter avec le role manager");
                request.getRequestDispatcher("/views/formLogin.jsp").forward(request, response);
            }
            Client c = (Client) session.getAttribute("clt");
        %>

        <jsp:include page="header.jsp"></jsp:include>
        <%
            Session s = HibernateUtil.getSession();
            Query q = s.createQuery("select c from Commande c where c.etat='en cours' or c.etat='expedie'");

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
                    <h3 style="color: red"><%=request.getAttribute("msg")%></h3>
                    <%
                        }
                    %>
                    <div class="tt-shopping-layout">
                        <!--<h2 class="tt-title-border">MY ACCOUNT</h2> -->
                        <div class="tt-wrapper">
                            <h1 class="tt-title" style="text-align: center;">ORDER HISTORY</h1>
                            <div class="tt-table-responsive">
                                <table class="tt-table-shop-01">
                                    <thead>
                                        <tr>
                                            <th>ORDER</th>
                                            <th>DATE</th>
                                            <th>PAYMENT STATUS</th>

                                            <th>TOTAL</th>
                                            <th>DISPATCHING</th>
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

                                            <td>$<%=cmd.total()%></td>

                                            <td class="cart_delete">
                                                <%if (!cmd.getEtat().equals("expedie")) {%>
                                                <a class="cart_quantity_delete" href="/Store/views/mescommandes.jsp?idcmd=<%=cmd.getIdcmd()%>"><i class="fa fa-eye"></i></a>
                                                <button class="cart_quantity_delete"  data-toggle="modal" data-target="#expedierModal" data-idcmd="<%=cmd.getIdcmd()%>">Expedier</button>
                                                <%}%>
                                            </td>

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
                                    <div class="modal fade" id="expedierModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <form action="/Store/Expedier" method="post">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Expedition de la commande :</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">

                            </button>
                        </div>
                        <div class="modal-body">

                            <div class="form-group">
                                <label for="recipient-name" class="col-form-label">ID Commande:</label>
                                <input type="text" class="form-control" name='idcmd' id="idcmd">
                            </div>
                            <div class="form-group">
                                <label for="message-text" class="col-form-label">Moyen d'expediton:</label>
                                <textarea class="form-control" name="moyen"></textarea>   
                            </div>
                            <div class="form-group">
                                <label for="message-text" class="col-form-label">Numero de suivi :</label>
                                <textarea class="form-control" name="numsuivi"></textarea>
                            </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Fermer</button>
                            <button type="submit" class="btn btn-primary">Enregistrer</button>
                        </div>
                    </div>

                </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
        <script>
              $('#expedierModal').on('show.bs.modal', function (event) {
                var button = $(event.relatedTarget)
                var idcmd = button.data('idcmd') 
                var modal = $(this)
                modal.find('.modal-body input').val(idcmd)
            })
            
     </script>
    </body>
</html>
