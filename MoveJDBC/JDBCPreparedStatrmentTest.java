package MoveJDBC;

import java.sql.*;

public class JDBCPreparedStatrmentTest {
    public static void main(String[] args) {
        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ebookshop?" +
                        "&serverTimezone=UTC" +
                        "&useSSL=false" +
                        "&allowPublicKeyRetrieval=true",
                "root",
                "");
             PreparedStatement preparedStatement = connection.prepareStatement("insert into ebooks values(?,?,?,?,?)");
             PreparedStatement pstmtSelect = connection.prepareStatement("Select * from ebooks");
        ) {
            preparedStatement.setInt(1, 7001);
            preparedStatement.setString(2, "Mahjong 101");
            preparedStatement.setString(3, "Kumar");
            preparedStatement.setDouble(4, 88.88);
            preparedStatement.setInt(5, 88);
            int rowsInserted = preparedStatement.executeUpdate();
            System.out.println(rowsInserted + "rows affected");
            preparedStatement.setInt(1, 7002);
            preparedStatement.setString(2, "Mahjong 102");
            rowsInserted = preparedStatement.executeUpdate();
            System.out.println(rowsInserted + "rows affected.");
            ResultSet resultSet = pstmtSelect.executeQuery();
            while(resultSet.next()) {
                System.out.println(resultSet.getInt("id") + ", "
                + resultSet.getString("title") + ", "
                + resultSet.getString("author") + ", "
                + resultSet.getDouble("price") + ", "
                + resultSet.getInt("qty"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
