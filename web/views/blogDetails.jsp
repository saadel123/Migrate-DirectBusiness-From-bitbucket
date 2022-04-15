<%-- 
    Document   : blog-listing-without-col
    Created on : Jun 3, 2021, 4:13:48 PM
    Author     : saad
--%>
<%@page import="java.sql.PreparedStatement"%>
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
        <%
           Blog a= null;
            int ida= Integer.parseInt(request.getParameter("ida"));
         Connection con=UtilConnexion.seConnecter();
         PreparedStatement ps=con.prepareStatement("select * from blog where idb=?");
         ps.setInt(1, ida);
         ResultSet rs=ps.executeQuery();
      
      SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd");
        if(rs.next())
            
            a=new Blog(rs.getInt("idb"), rs.getString("titre"), rs.getString("text"), rs.getString("img"),
                    sdf.parse(rs.getDate("datepub").toString()));
      
        
        %>
            <div id="loader-wrapper">
                <div id="loader">
                    <div class="dot"></div>
                    <div class="dot"></div>
                    <div class="dot"></div>
                    <div class="dot"></div>
                    <div class="dot"></div>
                    <div class="dot"></div>
                    <div class="dot"></div>
                </div>
            </div>
            <div class="tt-breadcrumb">
                <div class="container">
                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <li>Blog</li>
                    </ul>
                </div>
            </div>
            <div id="tt-pageContent">
                <div class="container-indent">
                    <div class="container container-fluid-custom-mobile-padding">
                        <div class="row justify-content-center">
                            <div class="col-xs-12 col-md-10 col-lg-8 col-md-auto">
                                <div class="tt-post-single">
                                    <!--<div class="tt-tag"><a href="#">FASHION</a></div>-->
                                    <h1 class="tt-title">
                                        <%=a.getTitre()%>
                                    </h1>
                                    
                                    <div class="tt-post-content">
                                        <img src="/Store/images/loader.svg" data-src="/Store/images/blog/<%=a.getImg()%>" alt="">
                                        <p>
                                            <%=a.getText()%>
                                        </p>
                                        <blockquote class="tt-blockquote">
                                            <i class="tt-icon icon-g-56"></i>
                                            <span class="tt-title">War and Marketing Have Many Similarities</span>
                                            <span class="tt-title-description">— <span>DANIEL BROWN</span></span>
                                        </blockquote>
                                        

                                    </div>
                                    <div class="post-meta">
                                        <span class="item">
                                            <span>Tag:</span> <span><a href="#">FASHION</a></span>, <span><a href="#">STYLE</a></span>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!--
                
                <div class="container-indent">
                <div class="container-indent">
                    <div class="container container-fluid-custom-mobile-padding">
                        <div class="row justify-content-center">
                            <div class="col-xs-12 col-md-10 col-lg-8 col-md-auto">
                                <h6 class="tt-title-border">2 COMMENTS</h6>
                                <div class="tt-comments-layout">
                                    <div class="tt-item">
                                        <div class="tt-comments-level-1">
                                            <div class="tt-avatar"><img src="/Store/images/blog/comments-img-01.jpg" alt=""></div>
                                            <div class="tt-content">
                                                <div class="tt-comments-title">
                                                    <span class="username">by <span>JESICA</span></span>
                                                    <span class="time">on January 14, 2017</span>
                                                </div>
                                                <p>
                                                    Laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod.
                                                </p>
                                                <a href="#" class="tt-btn"><i class="icon-g-06"></i></a>
                                            </div>
                                        </div>
                                        <div class="tt-comments-level-2">
                                            <div class="tt-avatar"></div>
                                            <div class="tt-content">
                                                <div class="tt-comments-title">
                                                    <span class="username">by <span>JESICA</span></span>
                                                    <span class="time">on January 14, 2017</span>
                                                </div>
                                                <p>
                                                    Laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod.
                                                </p>
                                                <a href="#" class="tt-btn"><i class="icon-g-06"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tt-item">
                                        <div class="tt-comments-level-1">
                                            <div class="tt-avatar"></div>
                                            <div class="tt-content">
                                                <div class="tt-comments-title">
                                                    <span class="username">by <span>ADAM</span></span>
                                                    <span class="time">on January 14, 2017</span>
                                                </div>
                                                <p>
                                                    Diusmod tempor incididunt ut labore et dolore magna aliqua.
                                                </p>
                                                <a href="#" class="tt-btn"><i class="icon-g-06"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container-indent">
                    <div class="container container-fluid-custom-mobile-padding">
                        <div class="row justify-content-center">
                            <div class="col-xs-12 col-md-10 col-lg-8 col-md-auto">
                                <div class="form-single-post">
                                    <h6 class="tt-title-border">LEAVE A REPLY</h6>
                                    <div class="form-default">
                                        <form>
                                            <div class="form-group">
                                                <label for="inputName" class="control-label">YOUR NAME *</label>
                                                <input type="text" class="form-control" id="inputName" placeholder="Enter your name">
                                            </div>
                                            <div class="form-group">
                                                <label for="inputEmail" class="control-label">E-MAIL *</label>
                                                <input type="email" class="form-control" id="inputEmail" placeholder="Enter your e-mail">
                                            </div>
                                            <div class="form-group">
                                                <label for="textarea" class="control-label">YOUR COMMENT *</label>
                                                <textarea class="form-control"  id="textarea" placeholder="Write a Comment" rows="8"></textarea>
                                            </div>
                                            <div class="form-group">
                                                <button type="submit" class="btn">POST COMMENT</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                -->
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
