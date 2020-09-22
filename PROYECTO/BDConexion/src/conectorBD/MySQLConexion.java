/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conectorBD;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;

/**
 *
 * @author USUARIO
 */
public class MySQLConexion {
    public static Connection getConexion() throws Exception{
        Connection con = null;
        String usuario = "root";
        String clave = "";
        String url = "jdbc:mysql://localhost/bd_desarrollo";
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        con = (Connection) DriverManager.getConnection(url, usuario, clave);
        return con;
    } 
    
}