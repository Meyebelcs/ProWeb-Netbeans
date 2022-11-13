/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import JBDC.Conexion;
import Modelos.Usuario;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

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
        
        boolean exists=rs.next();
        
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
        ps.setString(7, user.getFotoPerfil());
        ps.setString(8, user.getUsuario());
        ps.setString(9, user.getContraseña());
        int result = ps.executeUpdate();
        
        if(result > 0){
            return true;
        } else {
            return false;
        }
    }
    
}
