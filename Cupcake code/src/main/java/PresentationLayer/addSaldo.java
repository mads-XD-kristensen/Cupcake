package PresentationLayer;

import DBAccess.Connector;
import FunctionLayer.LoginSampleException;
import FunctionLayer.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

public class addSaldo extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        //tager og laver variabler som den for fra admin.jsp siden
        String email = request.getParameter("email");
        int saldo = Integer.parseInt(request.getParameter("saldo"));

        try {
            //indsætter en ny saldo på en given kunde ud fra de variabler der er blevet sat
            Connection con = Connector.connection();
            String SQL = "UPDATE users set saldo=? where email =?";
            PreparedStatement ps = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, saldo);
            ps.setString(2, email);
            ps.executeUpdate();

        } catch (SQLException | ClassNotFoundException ex) {
            throw new LoginSampleException(ex.getMessage());
        }

        return "admin";
    }
}
