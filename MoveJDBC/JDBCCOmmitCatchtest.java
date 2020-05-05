package MoveJDBC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCCOmmitCatchtest {

    public static void main(String[] args) throws SQLException{
        try(
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ebookshop?" +
                                "&serverTimezone=UTC" +
                                "&useSSL=false" +
                                "&allowPublicKeyRetrieval=true",
                        "root",
                        "");
                Statement statement = connection.createStatement();
                )
        {
            try {
                connection.setAutoCommit(false);
                statement.executeUpdate("insert into ebooks values (4001, 'paul Chan', 'Mahjong 101', 4.4, 4)");
                statement.executeUpdate("insert into ebooks values (4002, 'Peter Chan', 'Mahjong 102', 4.4, 4)");
                connection.commit();
            }
            catch (SQLException e) {
                System.out.println("--Rolling back changes--");
                e.printStackTrace();
                connection.rollback();
            }
        }

    }
}
