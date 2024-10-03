package servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConntUtils {

    public static Connection getMySQLConnection() throws ClassNotFoundException, SQLException {
        String hostname = "localhost";
        String dbName = "dbtuan2"; // Removed leading space
        String username = "root";
        String password = "";
        return getMySQLConnection(hostname, dbName, username, password);
    }

    private static Connection getMySQLConnection(String hostname, String dbName, String username, String password)
            throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String connectionURL = String.format("jdbc:mysql://%s:3306/%s", hostname, dbName); // Use String.format
        Connection conn = DriverManager.getConnection(connectionURL, username, password);
        return conn;
    }
}
