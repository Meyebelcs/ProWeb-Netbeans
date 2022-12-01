/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import JBDC.Conexion;
import Modelos.Comentario;
import Modelos.ConsultaPublicacion;
import Modelos.Publicacion;
import Modelos.Usuario;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author denis
 */
public class PublicacionDAO {
    private Connection con;
    private Conexion c = new Conexion();
    private Statement s;
    private PreparedStatement ps;
    private CallableStatement cs;
    private ResultSet rs;
    private ResultSet rs2;
    
     public boolean agregar(Publicacion post) throws SQLException{
        String sql = "CALL sp_Publicacion (?,?,?,?,?,?,?);";
        
        con = c.getConnection();
        
        ps = con.prepareStatement(sql);
        ps.setString(1, "I");
        ps.setString(2, "0");
        ps.setString(3, post.getTexto());
        ps.setBinaryStream(4, post.getImagen());
        ps.setBoolean(5, post.isSpoiler());
        ps.setBoolean(6, post.isHasImage());
        ps.setInt(7, post.getIdUsuario());
        int result = ps.executeUpdate();
        
        if(result > 0){
            return true;
        } else {
            return false;
        }
    }
     
      public ArrayList<ConsultaPublicacion> getPublicaciones(int page) throws SQLException{
        String sql = "CALL sp_Consulta (?,?,?,?,?,?);";
        
        ArrayList<ConsultaPublicacion> publicaciones = new ArrayList<>();
        
        con = c.getConnection();
        
        ps = con.prepareStatement(sql);
        ps.setString(1, "A");
        ps.setString(2, null);
        ps.setString(3, null);
        ps.setString(4, null);
        ps.setString(5, null);
        ps.setInt(6, page);
        rs = ps.executeQuery();
        
               
        while(rs.next()){
            
            int idPublicacion = rs.getInt("idPublicacion");
            String texto = rs.getString("texto");
            boolean spoiler=rs.getBoolean("spoiler");
            boolean hasImage=rs.getBoolean("hasImage");
            int idUsuario=rs.getInt("idUsuario");
            String fechaCreacion=rs.getString("fechaCreacion");
            String username=rs.getString("usuario");
            int MeGusta=rs.getInt("MeGusta");
            int Comentarios=rs.getInt("Comentarios");
                      
            publicaciones.add(new ConsultaPublicacion(idPublicacion, texto, spoiler, hasImage, idUsuario, true, fechaCreacion, username, MeGusta, Comentarios));
        
        }
        
        return publicaciones;
    }
      
      public ArrayList<ConsultaPublicacion> masVotadas(int page) throws SQLException{
        String sql = "CALL sp_Consulta (?,?,?,?,?,?);";
        
        ArrayList<ConsultaPublicacion> publicaciones = new ArrayList<>();
        
        con = c.getConnection();
        
        ps = con.prepareStatement(sql);
        ps.setString(1, "C");
        ps.setString(2, null);
        ps.setString(3, null);
        ps.setString(4, null);
        ps.setString(5, null);
        ps.setInt(6, page);
        rs = ps.executeQuery();
        
               
        while(rs.next()){
            
            int idPublicacion = rs.getInt("idPublicacion");
            String texto = rs.getString("texto");
            boolean spoiler=rs.getBoolean("spoiler");
            boolean hasImage=rs.getBoolean("hasImage");
            int idUsuario=rs.getInt("idUsuario");
            String fechaCreacion=rs.getString("fechaCreacion");
            String username=rs.getString("usuario");
            int MeGusta=rs.getInt("MeGusta");
            int Comentarios=rs.getInt("Comentarios");
                      
            publicaciones.add(new ConsultaPublicacion(idPublicacion, texto, spoiler, hasImage, idUsuario, true, fechaCreacion, username, MeGusta, Comentarios));
        
        }
        
        return publicaciones;
    }
      
    public ArrayList<ConsultaPublicacion> masComentadas(int page) throws SQLException{
        String sql = "CALL sp_Consulta (?,?,?,?,?,?);";
        
        ArrayList<ConsultaPublicacion> publicaciones = new ArrayList<>();
        
        con = c.getConnection();
        
        ps = con.prepareStatement(sql);
        ps.setString(1, "B");
        ps.setString(2, null);
        ps.setString(3, null);
        ps.setString(4, null);
        ps.setString(5, null);
        ps.setInt(6, page);
        rs = ps.executeQuery();
        
               
        while(rs.next()){
            
            int idPublicacion = rs.getInt("idPublicacion");
            String texto = rs.getString("texto");
            boolean spoiler=rs.getBoolean("spoiler");
            boolean hasImage=rs.getBoolean("hasImage");
            int idUsuario=rs.getInt("idUsuario");
            String fechaCreacion=rs.getString("fechaCreacion");
            String username=rs.getString("usuario");
            int MeGusta=rs.getInt("MeGusta");
            int Comentarios=rs.getInt("Comentarios");
                      
            publicaciones.add(new ConsultaPublicacion(idPublicacion, texto, spoiler, hasImage, idUsuario, true, fechaCreacion, username, MeGusta, Comentarios));
        
        }
        
        return publicaciones;
    }
      
         public ArrayList<ConsultaPublicacion> search(String text, int page) throws SQLException{
        String sql = "CALL sp_Consulta (?,?,?,?,?,?);";
        
        ArrayList<ConsultaPublicacion> publicaciones = new ArrayList<>();
        
        con = c.getConnection();
        
        ps = con.prepareStatement(sql);
        ps.setString(1, "D");
        ps.setString(2, null);
        ps.setString(3, text);
        ps.setString(4, null);
        ps.setString(5, null);
        ps.setInt(6, page);
        rs = ps.executeQuery();
        
               
        while(rs.next()){
            
            int idPublicacion = rs.getInt("idPublicacion");
            String texto = rs.getString("texto");
            boolean spoiler=rs.getBoolean("spoiler");
            boolean hasImage=rs.getBoolean("hasImage");
            int idUsuario=rs.getInt("idUsuario");
            String fechaCreacion=rs.getString("fechaCreacion");
            String username=rs.getString("usuario");
            int MeGusta=rs.getInt("MeGusta");
            int Comentarios=rs.getInt("Comentarios");
                      
            publicaciones.add(new ConsultaPublicacion(idPublicacion, texto, spoiler, hasImage, idUsuario, true, fechaCreacion, username, MeGusta, Comentarios));
        
        }
        
        return publicaciones;
    }
      
     public boolean editar(Publicacion publi) throws SQLException{
        String sql = "CALL sp_Publicacion (?,?,?,?,?,?,?);";
        
        con = c.getConnection();
        
            ps = con.prepareStatement(sql);
            ps.setString(1, "U");
            ps.setInt(2, publi.getIdPublicacion());
            ps.setString(3, publi.getTexto());
            ps.setBinaryStream(4, publi.getImagen());
            ps.setBoolean(5, publi.isSpoiler());
            ps.setBoolean(6, publi.isHasImage());
            ps.setInt(7, publi.getIdUsuario());
       
        int result = ps.executeUpdate();
        
        if(result > 0){
            return true;
        } else {
            return false;
        }
    }
     
     public boolean delete(int idPublicacion) throws SQLException{
        String sql = "CALL sp_Publicacion (?,?,?,?,?,?,?);";
        
        con = c.getConnection();
        
            ps = con.prepareStatement(sql);
            ps.setString(1, "D");
            ps.setInt(2, idPublicacion);
            ps.setString(3, null);
            ps.setBinaryStream(4, null);
            ps.setBoolean(5, true);
            ps.setBoolean(6, true);
            ps.setInt(7, 0);
       
        int result = ps.executeUpdate();
        
        if(result > 0){
            return true;
        } else {
            return false;
        }
    }
      
     public ResultSet getImg(int id, HttpServletResponse response) throws SQLException{
        String sql = " SELECT imagen FROM Publicacion WHERE idPublicacion="+id+" AND Activo=1;";
        
         InputStream inputStream=null;
         OutputStream outputStream=null;
         response.setContentType("image/*");
        try {
            outputStream=response.getOutputStream();
            con = c.getConnection();
            s = con.createStatement();
            rs = s.executeQuery(sql);
            
            if(rs.next()){
                inputStream=rs.getBinaryStream("imagen");
                response.getOutputStream().write(rs.getBytes("imagen"));
            }
            
            
        } catch (IOException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return rs;
        
    }
    
}
