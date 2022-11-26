/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import DAO.UsuarioDAO;
import Modelos.Usuario;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author denis
 */
@WebServlet(name = "UserRegister", urlPatterns = {"/UserRegister"})
@MultipartConfig(fileSizeThreshold=1024*1024,maxFileSize=1024*1024*5,maxRequestSize=1024*1024*5*5,location="/tmp")
public class UserRegister extends HttpServlet {

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
            out.println("<title>Servlet UserRegister</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserRegister at " + request.getContextPath() + "</h1>");
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
        String nombres = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");
        String fechaNacimiento = (String)request.getParameter("fechaN");
        String email = request.getParameter("email");
        Part filePart = request.getPart("fotoPerfil");
        InputStream bytes = filePart.getInputStream();
        String usuario = request.getParameter("usuario");
        String contraseña = request.getParameter("contra");
        
        Usuario user = new Usuario(0, nombres, apellidos, fechaNacimiento, email, bytes, usuario, contraseña, true);
        
        UsuarioDAO uDAO = new UsuarioDAO();
        
       try {
            boolean exists=uDAO.noRepeat(usuario);
            
            if(exists){
                
                request.setAttribute("error", "El nombre de usuario ya está en uso");
                request.getRequestDispatcher("/LOGIN_REGISTER/LOGIN_REGISTER.jsp").forward(request, response);
                
            }else{
            
            boolean result = uDAO.agregar(user);
            
                if(result){
                   request.getRequestDispatcher("/LOGIN_REGISTER/LOGIN_REGISTER.jsp").forward(request, response);
                }
            }
           
       } catch (SQLException ex) {
           Logger.getLogger(UserRegister.class.getName()).log(Level.SEVERE, null, ex);
           response.sendRedirect(request.getContextPath()+ "/idk.jsp");
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
