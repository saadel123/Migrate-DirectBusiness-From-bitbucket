/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pk.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Query;
import org.hibernate.Session;
import org.json.simple.JSONObject;
import pk.dao.HibernateUtil;
import pk.models.Produit;

/**
 *
 * @author saad
 */
@WebServlet(name = "LoadQuickViewData", urlPatterns = {"/LoadQuickViewData"})
public class LoadQuickViewData extends HttpServlet {

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
            out.println("<title>Servlet LoadQuickViewData</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoadQuickViewData at " + request.getContextPath() + "</h1>");
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
        try {
            JSONObject obj = new JSONObject();
//            Connection con = UtilConnexion.seConnecter();
//            ResultSet rs = con.createStatement().executeQuery("select LIBELLE,MARQUE,PRIX,DESCRIPTION,QTESTCK,URL,URL2 from Produit join Image using(idp) where idp=" + request.getParameter("idp"));
//            ResultSet rs = con.createStatement().executeQuery("select * from Produit where idp=" + idp);    
            Session s = HibernateUtil.getSession();
            Query q = s.createQuery("Select p From Produit p where p.idp=:idp");
            int idp = Integer.parseInt(request.getParameter("idp"));
            q.setInteger("idp", idp);

            List<Produit> lp = q.list();
            for (Produit p : lp) {
                obj.put("libelle", p.getLibelle());
                obj.put("marque", p.getMarque());
                obj.put("prix", p.getPrix());
                obj.put("description", p.getDescription());
                obj.put("categorie", p.getCategorie().getLibelle());
                obj.put("url", p.getImages().get(0).getUrl());
                obj.put("url2", p.getImages().get(0).getUrl2());
            }
            
            StringWriter out = new StringWriter();
            obj.writeJSONString(out);
            String jsonText = out.toString();
            PrintWriter pout = response.getWriter();
            pout.println(jsonText);
            System.out.print(jsonText);
        } catch (Exception ex) {
            Logger.getLogger(LoadQuickViewData.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        processRequest(request, response);
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
