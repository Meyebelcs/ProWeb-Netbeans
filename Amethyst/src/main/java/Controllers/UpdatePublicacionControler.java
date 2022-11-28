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
import Modelos.Publicacion;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author denis
 */
@WebServlet(name = "UpdatePublicacionControler", urlPatterns = {"/UpdatePublicacionControler"})
@MultipartConfig(fileSizeThreshold=1024*1024,maxFileSize=1024*1024*5,maxRequestSize=1024*1024*5*5,location="/tmp")
public class UpdatePublicacionControler extends HttpServlet {

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
            out.println("<title>Servlet UpdatePublicacionControler</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdatePublicacionControler at " + request.getContextPath() + "</h1>");
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
        //processRequest(request, response);
        HttpSession session=request.getSession(); 
        String id=session.getAttribute("id").toString();
        String idPublicacion = request.getParameter("idPubliEP");
        String texto = request.getParameter("textoEP");
        Part filePart = request.getPart("fotoEP");
        InputStream bytes;
         boolean hasImage=false;
        if(filePart.getSize() > 1){
           bytes = filePart.getInputStream();
           hasImage=true;
        }else{
           bytes=null;
           hasImage=false;
        }
        String spoiler = request.getParameter("spoilerEditP");
        boolean isSpoiler=false;
        if("on".equals(spoiler)){
            isSpoiler=true;
        }else if("off".equals(spoiler)){
            isSpoiler=false;
        }
       
        Publicacion post = new Publicacion(Integer.parseInt(idPublicacion), texto, bytes, hasImage,isSpoiler,  Integer.parseInt(id), true, null);
        
        PublicacionDAO pDAO = new PublicacionDAO();
        ComentarioDAO cDAO = new ComentarioDAO();
        MeGustaDAO mDAO= new MeGustaDAO();
        
        try {
            boolean result = pDAO.editar(post);
            
            if(result){
            ArrayList<ConsultaPublicacion> publicaciones = pDAO.getPublicaciones();
                 ArrayList<ConsultaComentario> comentarios = cDAO.getComentarios();
                 ArrayList<MeGusta> meGustas = mDAO.getMeGusta();
                request.setAttribute("meGustas", meGustas);
             request.setAttribute("publicaciones", publicaciones);
                request.setAttribute("comentarios", comentarios);
             request.getRequestDispatcher("/HOME/HOME.jsp").forward(request, response);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(UpdatePublicacionControler.class.getName()).log(Level.SEVERE, null, ex);
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
