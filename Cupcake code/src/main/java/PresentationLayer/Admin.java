package PresentationLayer;

import FunctionLayer.LoginSampleException;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Admin extends Command {

    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {

        //den der gør at du kommer ind på admin.jsp siden når du trykker på knappen
        //Lige nu kan alle tilgå denne side, men man kunne finde brugerens rolle (customer eller employee)
        // for at sørger for at det kun er dem med employee der kan komme ind
        return "admin";
    }
}
