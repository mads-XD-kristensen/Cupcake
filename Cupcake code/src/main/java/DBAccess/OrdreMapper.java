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
    //Her sender den ordren til databasen når kunden trykker på køb knappen i kurven
    public static int createOrdre(int userID, double pris) throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            //her indsætter vi en ordre og userID bliver sat ind på det første ? og pris på det andet ?
            String SQL = "INSERT INTO ordre VALUES(null,?,?, true);";
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

    //laver liste over ordrene
    public static void createOrdreList(int orderId, String top, String bot, int antal) throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            //Vi har ikke fået lavet antal i vores database.
            String SQL = "insert into cupcake Values(?,?,?,?);";
            PreparedStatement ps = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, orderId);
            ps.setString(2, top);
            ps.setString(3, bot);
            ps.setInt(4, antal);
            ps.executeUpdate();

        } catch (SQLException | ClassNotFoundException ex) {
            System.out.println(ex);
        }
    }

    //En metode der updatere kundens saldo
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
