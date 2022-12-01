/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Context;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author ASUS-PRO
 */
public class DBContext {

    static Connection conn = null;
    private static final String serverName = "LAPTOP-0IB3OE91\\\\SQLEXPRESS"; //"LAPTOP-0IB3OE91\\SQLEXPRESS"; 
    private static final String dbName = "LUNA_HOTEL";//"LUNA_HOTEL";
    private static final String portNumber = "1433";
    private static final String instance = "";
    private static final String userID = "sa";
    private static final String password = "huuthang";//"huuthang";

    private DBContext() {
    }

    public static Connection getDBContext() {
        try {
            if (conn == null) {
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                String url = "jdbc:sqlserver://" + serverName + ":" + portNumber + "\\" + instance + ";databaseName=" + dbName;
                if (instance == null || instance.trim().isEmpty()) {
                    url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";databaseName=" + dbName;
                }
                conn = DriverManager.getConnection(url, userID, password);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    public static void main(String[] args) {
        System.out.println(DBContext.getDBContext());
    }
}
