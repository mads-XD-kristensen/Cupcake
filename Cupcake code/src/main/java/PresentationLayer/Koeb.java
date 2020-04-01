package PresentationLayer;

import DBAccess.OrdreMapper;
import FunctionLayer.CupcakeTopBot.order;
import FunctionLayer.LoginSampleException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

// Det her er vores køb knap
public class Koeb extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {

        HttpSession session = request.getSession();
        //Vi prøver at få fat på prisen af ordren brugerens ID og deres saldo på deres account
        String role = (String) session.getAttribute("role");
        double pris = Double.parseDouble(request.getParameter("price"));
        double saldo = (Double) (session.getAttribute("saldo"));
        int userId = (int) session.getAttribute("userId");

        ArrayList<order> kurv = (ArrayList<order>) session.getAttribute("basket");

        //Hvis brugeren ikke er logget ind så skal de logge ind
        if (role == null) {
            return "opretLoginBruger";
        } else {
            //Her skal den finde om prisen på ordren er mindre eller lig med brugerens saldo
            if (pris <= saldo) {
                // Her opretter den en ordre og betaler for ordren
                int orderID = OrdreMapper.createOrdre(userId, pris);
                for (order cupcakes : kurv) {
                    //Lægger ordren ind i en liste
                    OrdreMapper.createOrdreList(orderID, cupcakes.getTop(), cupcakes.getBot(), cupcakes.getAntal());
                }
                //Updatere kundens nye saldo efter han har købt cupcakes
                OrdreMapper.updaterSaldo(saldo - pris, userId);
                session.removeAttribute("kurv");
            }
        }
        return "../index";
    }
}

