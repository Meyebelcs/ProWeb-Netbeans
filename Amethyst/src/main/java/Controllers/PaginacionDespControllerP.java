/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import DAO.ComentarioDAO;
import DAO.MeGustaDAO;
import DAO.PublicacionDAO;
import Modelos.ConsultaComentario;
import Modelos.ConsultaPublicacion;
import Modelos.MeGusta;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author denis
 */
@WebServlet(name = "PaginacionDespControllerP", urlPatterns = {"/PaginacionDespControllerP"})
public class PaginacionDespControllerP extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PaginacionDespController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PaginacionDespController at " + request.getContextPath() + "</h1>");
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
        processRequest(request, response);
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
        String section = request.getParameter("section");
        String page = request.getParameter("page");
        int newpage=Integer.parseInt(page)+1;
        int newpage2=Integer.parseInt(page)+2;
        
        PublicacionDAO pDAO = new PublicacionDAO();
        ComentarioDAO cDAO = new ComentarioDAO();
        MeGustaDAO mDAO= new MeGustaDAO();
        
        if(Integer.parseInt(section)==1){
            try {
                ArrayList<ConsultaPublicacion> publicaciones = pDAO.getPublicaciones(newpage);
                ArrayList<ConsultaPublicacion> isDesp = pDAO.getPublicaciones(newpage2);
                if(isDesp.size()<1){  
                    request.setAttribute("desp", 0);
                }else{
                    request.setAttribute("desp", 1);
                }
                ArrayList<ConsultaComentario> comentarios = cDAO.getComentarios();
                ArrayList<MeGusta> meGustas = mDAO.getMeGusta();
                request.setAttribute("meGustas", meGustas);
                request.setAttribute("publicaciones", publicaciones);
                request.setAttribute("comentarios", comentarios);
                 request.setAttribute("page", newpage);
                request.setAttribute("section", 1);
                request.getRequestDispatcher("/HOME/PRINCIPAL.jsp").forward(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(PaginacionDespControllerP.class.getName()).log(Level.SEVERE, null, ex);
            }
        }if(Integer.parseInt(section)==2){
        
            try {
                ArrayList<ConsultaPublicacion> publicaciones = pDAO.masComentadas(newpage);
                ArrayList<ConsultaPublicacion> isDesp = pDAO.masComentadas(newpage2);
                if(isDesp.size()<1){  
                    request.setAttribute("desp", 0);
                }else{
                    request.setAttribute("desp", 1);
                }
                ArrayList<ConsultaComentario> comentarios = cDAO.getComentarios();
                ArrayList<MeGusta> meGustas = mDAO.getMeGusta();
                request.setAttribute("meGustas", meGustas);
                request.setAttribute("publicaciones", publicaciones);
                request.setAttribute("comentarios", comentarios);
                 request.setAttribute("page", newpage);
                request.setAttribute("section", 2);
                request.getRequestDispatcher("/HOME/PRINCIPAL.jsp").forward(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(PaginacionDespControllerP.class.getName()).log(Level.SEVERE, null, ex);
            }
        
        }if(Integer.parseInt(section)==3){
        
            try {
                ArrayList<ConsultaPublicacion> publicaciones = pDAO.masVotadas(newpage);
                ArrayList<ConsultaPublicacion> isDesp = pDAO.masVotadas(newpage2);
                if(isDesp.size()<1){  
                    request.setAttribute("desp", 0);
                }else{
                    request.setAttribute("desp", 1);
                }
                ArrayList<ConsultaComentario> comentarios = cDAO.getComentarios();
                ArrayList<MeGusta> meGustas = mDAO.getMeGusta();
                request.setAttribute("meGustas", meGustas);
                request.setAttribute("publicaciones", publicaciones);
                request.setAttribute("comentarios", comentarios);
                 request.setAttribute("page", newpage);
                request.setAttribute("section", 3);
                request.getRequestDispatcher("/HOME/PRINCIPAL.jsp").forward(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(PaginacionDespControllerP.class.getName()).log(Level.SEVERE, null, ex);
            }
        
        }else if(Integer.parseInt(section)==4){
            try {
                ArrayList<ConsultaPublicacion> publicaciones = pDAO.getPublicaciones(1);
                ArrayList<ConsultaPublicacion> isDesp = pDAO.getPublicaciones(2);
                if(isDesp.size()<1){  
                    request.setAttribute("desp", 0);
                }else{
                    request.setAttribute("desp", 1);
                }
                ArrayList<ConsultaComentario> comentarios = cDAO.getComentarios();
                ArrayList<MeGusta> meGustas = mDAO.getMeGusta();
                request.setAttribute("meGustas", meGustas);
                request.setAttribute("publicaciones", publicaciones);
                request.setAttribute("comentarios", comentarios);
                 request.setAttribute("page", 1);
                request.setAttribute("section", 1);
                request.getRequestDispatcher("/HOME/PRINCIPAL.jsp").forward(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(PaginacionDespControllerP.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        }
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
