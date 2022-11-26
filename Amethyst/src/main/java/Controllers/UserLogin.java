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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author denis
 */
@WebServlet(name = "UserLogin", urlPatterns = {"/UserLogin"})
public class UserLogin extends HttpServlet {

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
            out.println("<title>Servlet UserLogin</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserLogin at " + request.getContextPath() + "</h1>");
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
        UsuarioDAO uDAO = new UsuarioDAO();
        
        try {
            
            String usuario = request.getParameter("usuario");
            String contraseña = request.getParameter("contra");
            
            boolean exists = uDAO.ValidarUser(usuario, contraseña);
            ResultSet datos = uDAO.consultar(usuario);
            
            if(exists){
                HttpSession mySession=request.getSession();
            
                mySession.setAttribute("usuario", usuario);
                mySession.setAttribute("id", datos.getInt("idUsuario"));
                mySession.setAttribute("nombres", datos.getString("nombres"));
                mySession.setAttribute("apellidos", datos.getString("apellidos"));
                mySession.setAttribute("edad", datos.getString("edad"));
                mySession.setAttribute("email", datos.getString("email"));
                mySession.setAttribute("contraseña", datos.getString("contraseña"));
                mySession.setAttribute("fechaNacimiento", datos.getString("fechaNacimiento"));
                request.setAttribute("id",datos.getInt("idUsuario"));
                request.setAttribute("usuario", usuario);
                request.setAttribute("contraseña", contraseña);
                request.getRequestDispatcher("/HOME/HOME.jsp").forward(request, response);
            }else{
                request.setAttribute("error", "Las credenciales no son válidas");
                request.getRequestDispatcher("/LOGIN_REGISTER/LOGIN_REGISTER.jsp").forward(request, response);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(UserLogin.class.getName()).log(Level.SEVERE, null, ex);
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
