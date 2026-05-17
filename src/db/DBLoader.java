package db;

import java.sql.*;

public class DBLoader {
    public static ResultSet executeQuery(String smt)
    {
        final String URL = "jdbc:mysql://localhost:3306/cabbooking";
        final String USER = "root";
        final String PASSWORD = "system";
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("Driver loaded successfully!!");

            //create connection to the mysql databases
            Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Connection build");

            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            System.out.println("Statement created");

            ResultSet rs = stmt.executeQuery(smt);
            
            return rs;
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
        
        return null;
    }
}
