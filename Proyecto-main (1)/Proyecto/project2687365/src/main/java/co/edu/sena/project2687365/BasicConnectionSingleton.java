package co.edu.sena.project2687365;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BasicConnectionSingleton {
    private static String url = "jdbc:mysql://localhost:3306/habr?serverTimezone=America/Bogota";
    private static String user = "Lax_150";
    private static String pass = "Yobanamama12345";
    private static Connection conn;
    public static Connection getInstance()
            throws SQLException {
        if (conn == null) {
            conn = DriverManager.getConnection(url, user,pass);
        }
        return conn;
    }
} // BasicConnectionSingleton
