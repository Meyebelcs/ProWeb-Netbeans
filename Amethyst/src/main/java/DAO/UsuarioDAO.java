/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import JBDC.Conexion;
import Modelos.Usuario;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author denis
 */
public class UsuarioDAO {
    private Connection con;
    private Conexion c = new Conexion();
    private Statement s;
    private PreparedStatement ps;
    private CallableStatement cs;
    private ResultSet rs;
    
    public boolean ValidarUser(String user, String contra) throws SQLException{
        String sql = "SELECT fn_ValidarUser(?,?);";
                
        con = c.getConnection();
        
        ps = con.prepareStatement(sql);
        ps.setString(1, user);
        ps.setString(2, contra);
        
        rs = ps.executeQuery();
        
        rs.next();
        
        boolean exists=rs.getBoolean(1);
        
        return exists;
    }
    
     public boolean agregar(Usuario user) throws SQLException{
        String sql = "CALL sp_Usuario (?,?,?,?,?,?,?,?,?);";
        
        con = c.getConnection();
        
        ps = con.prepareStatement(sql);
        ps.setString(1, "I");
        ps.setString(2, "0");
        ps.setString(3, user.getNombres());
        ps.setString(4, user.getApellidos());
        ps.setString(5, user.getFechaNacimiento());
        ps.setString(6, user.getEmail());
        ps.setBinaryStream(7, user.getFotoPerfil());
        ps.setString(8, user.getUsuario());
        ps.setString(9, user.getContraseña());
        int result = ps.executeUpdate();
        
        if(result > 0){
            return true;
        } else {
            return false;
        }
    }
     
     public boolean editar(Usuario user) throws SQLException{
        String sql = "CALL sp_Usuario (?,?,?,?,?,?,?,?,?);";
        
        con = c.getConnection();
        
            ps = con.prepareStatement(sql);
            ps.setString(1, "U");
            ps.setInt(2, user.getIdUsuario());
            ps.setString(3, user.getNombres());
            ps.setString(4, user.getApellidos());
            ps.setString(5, user.getFechaNacimiento());
            ps.setString(6, user.getEmail());
            ps.setBinaryStream(7, user.getFotoPerfil());
            ps.setString(8, user.getUsuario());
            ps.setString(9, user.getContraseña());
       
        int result = ps.executeUpdate();
        
        if(result > 0){
            return true;
        } else {
            return false;
        }
    }
     
     public ResultSet consultar(String user) throws SQLException{
        String sql = "CALL sp_Usuario (?,?,?,?,?,?,?,?,?);";
        
       con = c.getConnection();
        
        ps = con.prepareStatement(sql);
        ps.setString(1, "P");
        ps.setString(2, "0");
        ps.setString(3, null);
        ps.setString(4, null);
        ps.setString(5, null);
        ps.setString(6, null);
        ps.setString(7, null);
        ps.setString(8, user);
        ps.setString(9, null);
        rs = ps.executeQuery();
        
        rs.next();
        
        return rs;
        
    }
     
     public boolean noRepeat(String user) throws SQLException{
        String sql = "CALL sp_Usuario (?,?,?,?,?,?,?,?,?);";
        
       con = c.getConnection();
        
        ps = con.prepareStatement(sql);
        ps.setString(1, "P");
        ps.setString(2, "0");
        ps.setString(3, null);
        ps.setString(4, null);
        ps.setString(5, null);
        ps.setString(6, null);
        ps.setString(7, null);
        ps.setString(8, user);
        ps.setString(9, null);
        rs = ps.executeQuery();
        
        if(rs.next()){
            return true;
        }else{
            return false;
        }
        
    }
     
     public ResultSet getImg(int id, HttpServletResponse response) throws SQLException{
        String sql = " SELECT fotoPerfil FROM Usuario WHERE idUsuario="+id+" AND Activo=1;";
        
         InputStream inputStream=null;
         OutputStream outputStream=null;
         response.setContentType("image/*");
        try {
            outputStream=response.getOutputStream();
            con = c.getConnection();
            s = con.createStatement();
            rs = s.executeQuery(sql);
            
            if(rs.next()){
                inputStream=rs.getBinaryStream("fotoPerfil");
                response.getOutputStream().write(rs.getBytes("fotoPerfil"));
            }
            
            
        } catch (IOException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return rs;
        
    }
    
}
