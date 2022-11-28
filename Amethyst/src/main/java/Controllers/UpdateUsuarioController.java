/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import DAO.ComentarioDAO;
import DAO.MeGustaDAO;
import DAO.PublicacionDAO;
import DAO.UsuarioDAO;
import Modelos.ConsultaComentario;
import Modelos.ConsultaPublicacion;
import Modelos.MeGusta;
import Modelos.Usuario;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.ResultSet;
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
@WebServlet(name = "UpdateUsuarioController", urlPatterns = {"/UpdateUsuarioController"})
@MultipartConfig(fileSizeThreshold=1024*1024,maxFileSize=1024*1024*5,maxRequestSize=1024*1024*5*5,location="/tmp")
public class UpdateUsuarioController extends HttpServlet {

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
            out.println("<title>Servlet UpdateUsuarioController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateUsuarioController at " + request.getContextPath() + "</h1>");
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
             PublicacionDAO pDAO = new PublicacionDAO();
             ComentarioDAO cDAO = new ComentarioDAO();
             MeGustaDAO mDAO= new MeGustaDAO();
            String id=session.getAttribute("id").toString();
            String usuario=session.getAttribute("usuario").toString();
            String nombres = request.getParameter("nombresE");
            String apellidos = request.getParameter("apellidosE");
            String fechaNacimiento = (String)request.getParameter("fechaE");
            String email = request.getParameter("CorreoE");
            String contraseña = request.getParameter("ContraseñaE");
            Part filePart = request.getPart("fotoE");
            InputStream bytes;
            if(filePart.getSize() > 1){
                bytes = filePart.getInputStream();
            }else{
                bytes=null;
            }
                        
            Usuario user = new Usuario(Integer.parseInt(id), nombres, apellidos, fechaNacimiento, email, bytes, usuario, contraseña, true);
            
            UsuarioDAO uDAO = new UsuarioDAO();
            
        try {   
            
            boolean result = uDAO.editar(user);
            
            if(result){
                ResultSet datos = uDAO.consultar(usuario);
                session.setAttribute("usuario", usuario);
                session.setAttribute("id", datos.getInt("idUsuario"));
                session.setAttribute("nombres", datos.getString("nombres"));
                session.setAttribute("apellidos", datos.getString("apellidos"));
                session.setAttribute("edad", datos.getString("edad"));
                session.setAttribute("email", datos.getString("email"));
                session.setAttribute("contraseña", datos.getString("contraseña"));
                session.setAttribute("fechaNacimiento", datos.getString("fechaNacimiento"));
                request.setAttribute("id",datos.getInt("idUsuario"));
                request.setAttribute("usuario", usuario);
                request.setAttribute("contraseña", contraseña);
                 ArrayList<ConsultaPublicacion> publicaciones = pDAO.getPublicaciones();
                 ArrayList<ConsultaComentario> comentarios = cDAO.getComentarios();
                 ArrayList<MeGusta> meGustas = mDAO.getMeGusta();
                request.setAttribute("meGustas", meGustas);
                request.setAttribute("publicaciones", publicaciones);
                request.setAttribute("comentarios", comentarios);
                request.getRequestDispatcher("/HOME/HOME.jsp").forward(request, response);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(UpdateUsuarioController.class.getName()).log(Level.SEVERE, null, ex);
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
