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

        HttpSession session = request.getSession();

        String top = (request.getParameter("top"));
        session.setAttribute("top", top);

        String bot = (request.getParameter("bot"));
        session.setAttribute("bot", bot);

        int antal = Integer.parseInt(request.getParameter("antal"));
        session.setAttribute("antal",antal);



        ArrayList<Order> kurv;
        if (session.getAttribute("basket") != null) {

            kurv =  (ArrayList<Order>) session.getAttribute("basket");

        } else {

            kurv = new ArrayList<>();

        }


        String topping = request.getParameter("top");
        String botting = request.getParameter("bot");


        Order cupcake = new Order(topping, botting, antal);

        kurv.add(cupcake);

        session.setAttribute("basket", kurv);
        antalCupcakes += antal;

        return "../index";
    }
}

