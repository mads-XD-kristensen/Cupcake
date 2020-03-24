package DBAccess;

import FunctionLayer.CupcakeTopBot.Bot;
import FunctionLayer.CupcakeTopBot.Top;
import FunctionLayer.LoginSampleException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DataMapper {

    public static ArrayList<Top> collectTopping() throws LoginSampleException {
        try {

            ArrayList<Top> topFill = new ArrayList<>();
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM cupcake.top ";
            PreparedStatement ps = con.prepareStatement(SQL);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                int id = rs.getInt("id");
                String name = rs.getString("navn");
                Double price = rs.getDouble("pris");
                Top top = new Top(id, name, price);
                topFill.add(top);
            }

            return topFill;

        } catch (SQLException | ClassNotFoundException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    public static ArrayList<Bot> collectBotting() throws LoginSampleException {
        try {

            ArrayList<Bot> botFill = new ArrayList<>();
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM cupcake.bot ";
            PreparedStatement preparedStatement = con.prepareStatement(SQL);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {

                int id = rs.getInt("id");
                String name = rs.getString("navn");
                Double price = rs.getDouble("pris");
                Bot bot = new Bot(id, name, price);
                botFill.add(bot);
            }
            return botFill;

        } catch (SQLException | ClassNotFoundException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }
}


