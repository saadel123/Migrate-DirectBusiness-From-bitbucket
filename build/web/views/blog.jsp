<%-- 
    Document   : blog
    Created on : Mar 18, 2021, 4:50:25 PM
    Author     : saad
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="pk.controllers.UtilConnexion"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="pk.models.Blog"%>
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
                        <li>Blog</li>
                    </ul>
                </div>
            </div>

        <%
            List<Blog> arts = new ArrayList<Blog>();
            Connection con = UtilConnexion.seConnecter();
            String req = "select * from blog order by datepub desc";
            ResultSet rs = con.createStatement().executeQuery(req);
            SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-dd");
            while (rs.next()) {
                arts.add(new Blog(rs.getInt("idb"), rs.getString("titre"), rs.getString("text"), rs.getString("img"),
                        sdf.parse(rs.getDate("datepub").toString())));
            }
            con.close();
            int p = 1;
            if (request.getParameter("p") != null) {
                p = Integer.parseInt(request.getParameter("p"));
            }
            int nbrArtParPage = 3;
            int nbrPages = (arts.size() % nbrArtParPage == 0) ? arts.size() / nbrArtParPage : arts.size() / nbrArtParPage + 1;
            int indexTo = p * nbrArtParPage;
            if (arts.size() % nbrArtParPage != 0 && p == nbrPages) {
                indexTo = arts.size();
            }
            List<Blog> artsCur = arts.subList((p - 1) * nbrArtParPage, indexTo);
        %>
        <div id="tt-pageContent">
            <div class="container-indent">
                <div class="container container-fluid-custom-mobile-padding">
                    <h1 class="tt-title-subpages noborder">THE BLOG</h1>
                    <div class="row">
                        <div class="col-12">
                            <div class="tt-listing-post tt-half">

                                <%
                                    for (Blog a : artsCur) {
                                %>
                                <div class="tt-post">
                                    <div class="tt-post-img">
                                        <a href="blog-single-post.html"><img src="/Store/images/loader.svg" data-src="/Store/images/blog/<%=a.getImg()%>" alt="<%=a.getTitre()%>"></a>
                                    </div>
                                    <div class="tt-post-content">
                                        <!--<div class="tt-tag"><a href="#">FASHION</a></div>-->
                                        <h2 class="tt-title"><a href="/Store/views/blogDetails.jsp?ida=<%=a.getIda()%>"><%=a.getTitre()%></a></h2>
                                        <div class="tt-description">
                                            <%=a.getText().substring(0, 200)%>...
                                        </div>

                                        <div class="tt-btn">
                                            <a href="/Store/views/blogDetails.jsp?ida=<%=a.getIda()%>" class="btn">READ MORE</a>
                                        </div>
                                    </div>
                                </div>
                                <%}%>

                                <div style="margin: auto;position: relative; width: 200px">
                                    <div class="tt-pagination">
                                        <ul class="tt-pagination">
                                            <%  for (int i = 1; i <= nbrPages; i++) {
                                                    if (i == p) {
                                            %>
                                            <li class="page-item active" aria-current="page">
                                                <span class="page-link">
                                                    <%=i%>
                                                    <span class="active">(current)</span>
                                                </span>
                                            </li>
                                            <%} else {%>
                                            <li style="text-align: center;"class="btn-pagination"><a class="btn-pagination " href="/Store/views/blog.jsp?p=<%=i%>"><%=i%></a><!--<span class="btn-pagination btn-next">--></span></li>
                                                <%}
                                                %>
                                            <%}
                                                %>
                                        </ul>
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
