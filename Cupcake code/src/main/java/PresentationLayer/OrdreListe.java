package PresentationLayer;

import DBAccess.DataMapper;
import FunctionLayer.CupcakeTopBot.Order;
import FunctionLayer.LoginSampleException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

public class OrdreListe extends Command{
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {

        List<Order> alleOrdre = DataMapper.ListeAfOrdre();

        HttpSession session = request.getSession();
        session.setAttribute("liste", alleOrdre);



        return null;
    }
}
