/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pk.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import pk.dao.HibernateUtil;
import pk.models.Client;
import pk.models.Produit;
import pk.models.Wish;
import pk.models.Wishlist;

/**
 *
 * @author saad
 */
@WebServlet(name = "AddToWish", urlPatterns = {"/AddToWish"})
public class AddToWish extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddToWish</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddToWish at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Session s = HibernateUtil.getSession();
//
//        Client clt = (Client) request.getSession().getAttribute("clt");
//        Produit prd = (Produit) request.getSession().getAttribute("idp");
//        clt = (Client) s.get(Client.class, clt.getIdc());
//        prd = (Produit) s.get(Produit.class, prd.getIdp());
//        Wishlist ws = new Wishlist(0, clt, null, (List<Produit>) prd);
//        s.beginTransaction();
//        s.save(ws);
//        s.getTransaction().commit();
//        request.setAttribute("msg", "Produit Ajouter to itemwishlist avec succes.");
//        request.getRequestDispatcher("/views/wishlist.jsp").forward(request, response);

        String action = request.getParameter("action");
        int idp = Integer.parseInt(request.getParameter("idp"));

        Wish wishlist = null;
        if (request.getSession().getAttribute("wishlist") != null) {
            wishlist = (Wish) request.getSession().getAttribute("wishlist");
        } else {
            wishlist = new Wish();
        }

        if (action.equals("ajouter")) {
            int qte = Integer.parseInt(request.getParameter("qte"));
            wishlist.addItem(idp, qte);
            if (request.getSession().getAttribute("clt") != null) {
                Client clt = (Client) request.getSession().getAttribute("clt");
                Produit prd = (Produit) request.getSession().getAttribute("idp");
                clt = (Client) s.get(Client.class, clt.getIdc());
                Wishlist ws = new Wishlist(0, clt, null, (List<Produit>) prd);
                s.beginTransaction();
                s.save(ws);
                s.getTransaction().commit();
            }
        }
        if (action.equals("supp")) {
            wishlist.supprimerProduit(idp);
            /*if (request.getSession().getAttribute("clt") != null) {
                int idc = Integer.parseInt(request.getParameter("idc"));
                Wishlist ws = (Wishlist) s.get(Wishlist.class,idc);
                s.beginTransaction();
                s.delete(ws);
                s.getTransaction().commit();
            }*/
        }

        request.getSession().setAttribute("wishlist", wishlist);
        request.getRequestDispatcher("/views/wishlist.jsp").forward(request, response);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
