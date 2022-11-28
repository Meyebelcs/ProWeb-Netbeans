/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import JBDC.Conexion;
import Modelos.Comentario;
import Modelos.ConsultaComentario;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author denis
 */
public class ComentarioDAO {
    private Connection con;
    private Conexion c = new Conexion();
    private Statement s;
    private PreparedStatement ps;
    private CallableStatement cs;
    private ResultSet rs;
    
    public boolean agregar(Comentario comment) throws SQLException{
        String sql = "CALL sp_Comentario (?,?,?,?,?,?);";
        
        con = c.getConnection();
        
        ps = con.prepareStatement(sql);
        ps.setString(1, "I");
        ps.setInt(2, 0);
        ps.setString(3, comment.getTexto());
        ps.setBoolean(4, comment.isSpoiler());
        ps.setInt(5, comment.getIdUsuario());
        ps.setInt(6, comment.getIdPublicacion());
        int result = ps.executeUpdate();
        
        if(result > 0){
            return true;
        } else {
            return false;
        }
    }
    
    public ArrayList<ConsultaComentario> getComentarios() throws SQLException{
        String sql = "CALL sp_Comentario (?,?,?,?,?,?);";
        
        ArrayList<ConsultaComentario> comments= new ArrayList<>();
        
        con = c.getConnection();
        
         ps = con.prepareStatement(sql);
            ps.setString(1, "X");
            ps.setString(2, null);
            ps.setString(3, null);
            ps.setString(4, null);
            ps.setString(5, null);
            ps.setString(6, null);
            rs = ps.executeQuery();
        
               
        while(rs.next()){
            
               int idComentario = rs.getInt("idComentario");
               String texto = rs.getString("texto");
               boolean spoiler=rs.getBoolean("spoiler");
               int idUsuario=rs.getInt("idUsuario");
               int idPublicacion=rs.getInt("idPublicacion");
               String fechaCreacion=rs.getString("fechaCreacion");
               String usuario=rs.getString("usuario");
               
               comments.add(new ConsultaComentario(idComentario, texto, spoiler, idUsuario, idPublicacion, true, fechaCreacion, usuario));
            
            }                
        
        return comments;
    }
    
     public boolean editar(Comentario comment) throws SQLException{
        String sql = "CALL sp_Comentario (?,?,?,?,?,?);";
        
        con = c.getConnection();
        
            ps = con.prepareStatement(sql);
            ps.setString(1, "U");
            ps.setInt(2, comment.getIdComentario());
            ps.setString(3, comment.getTexto());
            ps.setBoolean(4, comment.isSpoiler());
            ps.setInt(5, comment.getIdUsuario());
            ps.setInt(6, comment.getIdPublicacion());
       
        int result = ps.executeUpdate();
        
        if(result > 0){
            return true;
        } else {
            return false;
        }
    }
     
     public boolean delete(int idComment) throws SQLException{
        String sql = "CALL sp_Comentario (?,?,?,?,?,?);";
        
        con = c.getConnection();
        
            ps = con.prepareStatement(sql);
            ps.setString(1, "D");
            ps.setInt(2, idComment);
            ps.setString(3, null);
            ps.setString(4, null);
            ps.setString(5, null);
            ps.setString(6, null);
       
        int result = ps.executeUpdate();
        
        if(result > 0){
            return true;
        } else {
            return false;
        }
    }
    
}
