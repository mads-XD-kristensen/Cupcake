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

        HttpSession session = request.getSession();

        String top = request.getParameter("top");
        //session.setAttribute("top", top);


        String bot = request.getParameter("bot");
        //session.setAttribute("bot", bot);

        int antal = Integer.parseInt(request.getParameter("antal"));
        //session.setAttribute("antal",antal);


        // det her virker
        ArrayList<order> kurv;
        kurv = new ArrayList<>();

        order cupcake = new order(top, bot, antal);

        kurv.add(cupcake);

        session.setAttribute("basket", kurv);



        return "../index";

// det her virker også
/*
        if ((ArrayList<order>) session.getAttribute("basket") == null) {
            ArrayList<order> basket = new ArrayList<>();
            session.setAttribute("basket", basket);

        }

        order cupcake = new order(top, bot, antal);

        ((ArrayList<order>) session.getAttribute("basket")).add(cupcake);



        return "../index";  */

    }


}

