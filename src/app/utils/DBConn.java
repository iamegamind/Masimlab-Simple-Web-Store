package app.utils;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBConn {

  public static Connection connect() {

    Connection conn = null;
    
    try {

      Class.forName("com.mysql.jdbc.Driver");
      String DBURL = "jdbc:mysql://localhost:3306/store";
      String username = "root";
      String password = "Kolevrator7";

      conn = DriverManager.getConnection(DBURL, username, password);
    }
    catch (SQLException sqlc) {
      sqlc.printStackTrace();
    }
    catch (ClassNotFoundException ex) {
      Logger.getLogger(DBConn.class.getName()).log(Level.SEVERE, null, ex);
    }

    return conn;
  }
}
