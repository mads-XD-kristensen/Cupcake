package PresentationLayer;

import FunctionLayer.CupcakeTopBot.order;
import FunctionLayer.LoginSampleException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

public class AddKurv extends Command {

    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        //Opretter en session
        HttpSession session = request.getSession();
        //Her bliver lavet tre variabler som den får fra index.jsp ved hjælp af request.getParameter
        String top = request.getParameter("top");
        String bot = request.getParameter("bot");
        int antal = Integer.parseInt(request.getParameter("antal"));

        //Her tjekker den om der allerede er en session hvor der er noget i kurven hvis ikke så laver den en ny og den laver en ny arrayList
        if ((ArrayList<order>) session.getAttribute("basket") == null) {
            ArrayList<order> basket = new ArrayList<>();
            session.setAttribute("basket", basket);
        }
        //Her laver den cupcakes ud fra de variabler der er og putter dem ind i arrayList. Og det bliver lagt på sessionScope så man kan tilgå det fra jsp sider
        order cupcake = new order(top, bot, antal);
        ((ArrayList<order>) session.getAttribute("basket")).add(cupcake);

        return "../index";
    }
}

