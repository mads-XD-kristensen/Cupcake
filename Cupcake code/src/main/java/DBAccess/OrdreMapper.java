package DBAccess;



import java.sql.*;
import FunctionLayer.LoginSampleException;
import FunctionLayer.User;
import FunctionLayer.LoginSampleException;
import FunctionLayer.User;
import FunctionLayer.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class OrdreMapper {


    public static int createOrdre(int userID, double pris) throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "INSERT INTO ordrer VALUES(null,?,?, false);";
            PreparedStatement ps = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, userID);
            ps.setDouble(2, pris);
            ps.executeUpdate();
            ResultSet ids = ps.getGeneratedKeys();
            ids.next();
            int id = ids.getInt(1);
            return id;
        } catch (SQLException | ClassNotFoundException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    public static void createOrdreList(int orderId, int top, int bottom, int antal) throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "insert into cupcake Values(?,?,?,?);";
            PreparedStatement ps = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, orderId);
            ps.setInt(2, top);
            ps.setInt(3, bottom);
            ps.setInt(4, antal);
            ps.executeUpdate();
        } catch (SQLException | ClassNotFoundException ex) {
            System.out.println(ex);
        }
    }

    public static void updaterSaldo(double nySaldo, int userId) throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "UPDATE users SET saldo = ? WHERE id = ?; ";
            PreparedStatement ps = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);
            ps.setDouble(1, nySaldo);
            ps.setInt(2, userId);
            ps.executeUpdate();
        } catch (SQLException | ClassNotFoundException ex) {
            System.out.println(ex);
        }
    }



}
