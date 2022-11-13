/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package JBDC;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author denis
 */
public class Conexion {
    private Connection con;
    private String serverName = "localhost";
    private String portNumber = "3306";
    private String databaseName = "Amethyst";
    private String url = "jdbc:mysql://" + serverName+ ":" + portNumber + "/" + databaseName;
    private String userName = "root";
    private String password = "3312";
    
    public Conexion(){
        try{
           Class.forName("com.mysql.jdbc.Driver");
           con = DriverManager.getConnection(url, userName, password);
       }catch (Exception ex){
           System.out.println("Error" + ex);
       }
    }
    
    public Connection getConnection(){
        return con;
    }
}
