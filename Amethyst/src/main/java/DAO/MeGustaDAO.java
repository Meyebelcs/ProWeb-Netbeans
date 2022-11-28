/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import JBDC.Conexion;
import Modelos.ConsultaPublicacion;
import Modelos.MeGusta;
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
public class MeGustaDAO {
     private Connection con;
    private Conexion c = new Conexion();
    private Statement s;
    private PreparedStatement ps;
    private CallableStatement cs;
    private ResultSet rs;
    
    public boolean agregar(MeGusta Like) throws SQLException{
        String sql = "CALL  sp_MeGusta (?,?,?,?);";
        
        
        con = c.getConnection();
        
        ps = con.prepareStatement(sql);
        ps.setString(1, "I");
        ps.setString(2, "0");
        ps.setInt(3, Like.getIdUsuario());
        ps.setInt(4, Like.getIdPublicacion());
        int result = ps.executeUpdate();
        
        
        if(result > 0){
            return true;
        } else {
            return false;
        }
        
    }
    
    public boolean delete(int idLike) throws SQLException{
        String sql = "CALL  sp_MeGusta (?,?,?,?);";
        
        con = c.getConnection();
        
        ps = con.prepareStatement(sql);
        ps.setString(1, "D");
        ps.setInt(2, idLike);
        ps.setString(3, null);
        ps.setString(4, null);
        int result = ps.executeUpdate();
        
        if(result > 0){
            return true;
        } else {
            return false;
        }
    }
    
    public ArrayList<MeGusta> getMeGusta() throws SQLException{
        String sql = "CALL  sp_MeGusta (?,?,?,?);";
        
        ArrayList<MeGusta> meGustas = new ArrayList<>();
        
        con = c.getConnection();
        
        ps = con.prepareStatement(sql);
        ps.setString(1, "S");
        ps.setString(2, null);
        ps.setString(3, null);
        ps.setString(4, null);
        rs = ps.executeQuery();
        
        while(rs.next()){
            
            int idMeGusta=rs.getInt("idMeGusta");
            int idUsuario=rs.getInt("idUsuario");
            int idPublicacion=rs.getInt("idPublicacion");
                      
            meGustas.add(new MeGusta(idMeGusta, idUsuario, idPublicacion, true));
        
        }
        
        return meGustas;
        
    }
     
}
