package PresentationLayer;


import FunctionLayer.CupcakeTopBot.Order;
import FunctionLayer.LoginSampleException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

public class AddKurv extends Command {

    private static int antalCupcakes = 0;

    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {

        int top = Integer.parseInt(request.getParameter("top"));
        int bot = Integer.parseInt(request.getParameter("bot"));
        int antal = Integer.parseInt(request.getParameter("antal"));

        HttpSession session = request.getSession();

        ArrayList<Order> kurv;
        if (session.getAttribute("kurv") != null) {

            kurv = (ArrayList<Order>) session.getAttribute("kurv");

        } else {

            kurv = new ArrayList<>();

        }
        Order tempCupcake = new Order(top, bot, antal);

        for (Order order : kurv) {

            if (order.getBot() == tempCupcake.getBot() && order.getTop() == tempCupcake.getTop()) {
                order.setAntal(order.getAntal() + tempCupcake.getAntal());
                session.setAttribute("kurv", kurv);
                antalCupcakes += antal;

                return "../index";
            }
        }
        kurv.add(tempCupcake);

        session.setAttribute("kurv", kurv);
        antalCupcakes += antal;

        return "../index";
    }
}

