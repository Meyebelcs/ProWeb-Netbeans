/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import JBDC.Conexion;
import Modelos.Publicacion;
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
public class PublicacionDAO {
    private Connection con;
    private Conexion c = new Conexion();
    private Statement s;
    private PreparedStatement ps;
    private CallableStatement cs;
    private ResultSet rs;
    
     public boolean agregar(Publicacion post) throws SQLException{
        String sql = "CALL sp_Publicacion (?,?,?,?,?,?);";
        
        con = c.getConnection();
        
        ps = con.prepareStatement(sql);
        ps.setString(1, "I");
        ps.setString(2, "0");
        ps.setString(3, post.getTexto());
        ps.setString(4, post.getImagen());
        ps.setBoolean(5, post.isSpoiler());
        ps.setInt(6, post.getIdUsuario());
        int result = ps.executeUpdate();
        
        if(result > 0){
            return true;
        } else {
            return false;
        }
    }
     
      public ArrayList<Publicacion> getPublicaciones() throws SQLException{
        String sql = "CALL sp_Consulta (?,?,?,?,?);";
        
        ArrayList<Publicacion> publicaciones = new ArrayList<>();
        
        con = c.getConnection();
        
        ps = con.prepareStatement(sql);
        ps.setString(1, "A");
        ps.setString(2, null);
        ps.setString(3, null);
        ps.setString(4, null);
        ps.setString(5, null);
        rs = ps.executeQuery();
        
        while(rs.next()){
            int idPublicacion = rs.getInt("idPublicacion");
            String texto = rs.getString("texto");
            String imagen = rs.getString("imagen");
            boolean spoiler=rs.getBoolean("spoiler");
            int idUsuario=rs.getInt("idUsuario");
            String fechaCreacion=rs.getString("fechaCreacion");
            
            
            publicaciones.add(new Publicacion(idPublicacion, texto, imagen, spoiler, idUsuario,true, fechaCreacion));
        }
        
        return publicaciones;
    }
    
}
