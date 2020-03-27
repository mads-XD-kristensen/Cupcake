package PresentationLayer;

import DBAccess.OrdreMapper;
import FunctionLayer.CupcakeTopBot.order;
import FunctionLayer.LoginSampleException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

public class Koeb extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        HttpSession session = request.getSession();

        // ved ikke om role er nødvendig
        String role = (String) session.getAttribute("role");

        double pris = Double.parseDouble(request.getParameter("price"));
        double saldo = (Double) (session.getAttribute("money"));
        int userId = (int) session.getAttribute("userId");

        ArrayList<order> kurv = (ArrayList<order>) session.getAttribute("basket");

        if (role == null) {
            return "opretLoginBruger";
        } else {
            if (pris <= saldo) {
                int orderID = OrdreMapper.createOrdre(userId, pris);
                for (order cupcakes : kurv) {
                    OrdreMapper.createOrdreList(orderID, cupcakes.getTop(), cupcakes.getBot(), cupcakes.getAntal());
                }
                OrdreMapper.updaterSaldo(saldo - pris, userId);
                session.removeAttribute("kurv");
            }
        }
        return "../index";
    }

}
