package PresentationLayer;

import DBAccess.DataMapper;
import FunctionLayer.CupcakeTopBot.Order;
import FunctionLayer.LoginSampleException;
import FunctionLayer.User;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

public class Admin extends Command {

    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {


        return "admin";
    }
}
