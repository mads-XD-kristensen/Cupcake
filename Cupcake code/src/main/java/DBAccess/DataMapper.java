package DBAccess;

import FunctionLayer.CupcakeTopBot.Bot;
import FunctionLayer.CupcakeTopBot.order;
import FunctionLayer.CupcakeTopBot.Top;
import FunctionLayer.LoginSampleException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DataMapper {
    //Det er her vi får topping til vores dropdown menu ved hjælp af database
    public static ArrayList<Top> collectTopping() throws LoginSampleException {
        ArrayList<Top> topFill = new ArrayList<>();
        //Vi laver forbindelse til vores database hvor vi har alle informationer
        try {
            Connection con = Connector.connection();
            //Vi laver et prepared statement og vi vil gerne have alt inde fra vores cupcake.top tabel i databasen
            String SQL = "SELECT * FROM cupcake.top";
            PreparedStatement ps = con.prepareStatement(SQL);
            ResultSet rs = ps.executeQuery();
            //Her laver vi et while loop, og vi gemmer alle informationerne i en ArrayList
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("navn");
                double pris = rs.getDouble("pris");
                Top top = new Top(name, pris);
                top.setId(id);
                topFill.add(top);
            }
            //Her bliver ArrayList returneret
            return topFill;

        } catch (SQLException | ClassNotFoundException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    //Her gør vi det sammen bare med bundende
    public static ArrayList<Bot> collectBotting() throws LoginSampleException {
        ArrayList<Bot> botFill = new ArrayList<>();
        //Vi laver forbindelse til vores database hvor vi har alle informationer
        try {
            Connection con = Connector.connection();
            //Vi laver et prepared statement og vi vil gerne have alt inde fra vores cupcake.bot tabel i databasen
            String SQL = "SELECT * FROM cupcake.bot ";
            PreparedStatement preparedStatement = con.prepareStatement(SQL);
            ResultSet rs = preparedStatement.executeQuery();
            //Her laver vi et while loop, og vi gemmer alle informationerne i en ArrayList
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("navn");
                Double price = rs.getDouble("pris");
                Bot bot = new Bot(name, price);
                bot.setId(id);
                botFill.add(bot);
            }
            //Her bliver ArrayList returneret
            return botFill;

        } catch (SQLException | ClassNotFoundException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    //Det her skal lave en liste af alle ordre som så skal kunne blive vist på en admin page
    public static ArrayList<order> ListeAfOrdre() throws LoginSampleException {
        try {
            //Opretter forbindelse til databasen
            Connection con = Connector.connection();
            //Et sql statement for at få ordre id, hvem der har bestilt, og navne på topping og bund, og til sidst en pris
            String SQL = "SELECT ordre.id, users.email, top.navn as top, bot.navn as bot, ordre.pris " +
                    "from((((ordre " +
                    "Inner join users on ordre.userid=users.id) " +
                    "inner join cupcake on cupcake.orderid=ordre.id) " +
                    "inner join top on cupcake.topid=top.id) " +
                    "inner join bot on cupcake.botid=bot.id)";

            PreparedStatement preparedStatement = con.prepareStatement(SQL);
            ResultSet rs = preparedStatement.executeQuery();
            ArrayList<order> ordreList = new ArrayList<>();
            //Her finder vi så bare alle ordre der er og gemmer dem i en ArrayList
            while (rs.next()) {
                int id = rs.getInt("id");
                String email = rs.getString("email");
                String top = rs.getString("top");
                String bot = rs.getString("bot");
                int total = rs.getInt("pris");
                order order = new order(top, bot, total);
                ordreList.add(order);
            }
            return ordreList;

        } catch (SQLException | ClassNotFoundException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    //Det her er en test for at få kurven til at virke så at den kan vise De enkelte navne på topping
    public static String listTop(int index) throws LoginSampleException {
        ArrayList<String> toppen = new ArrayList<>();
        String top = "";
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT navn FROM cupcake.top";
            PreparedStatement ps = con.prepareStatement(SQL);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                String name = rs.getString("navn");
                toppen.add(name);
            }
            top = toppen.get(index);
            return top;

        } catch (SQLException | ClassNotFoundException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    //Det her er en test for at få kurven til at virke så at den kan vise De enkelte navne på bund
    public static String listBot(int index) throws LoginSampleException {
        ArrayList<String> bund = new ArrayList<>();
        String bot = "";
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT navn FROM cupcake.bot";
            PreparedStatement ps = con.prepareStatement(SQL);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                String name = rs.getString("navn");
                bund.add(name);
            }
            bot = bund.get(index);
            return bot;

        } catch (SQLException | ClassNotFoundException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }
}


