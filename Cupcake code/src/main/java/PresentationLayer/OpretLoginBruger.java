package PresentationLayer;

import FunctionLayer.LoginSampleException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class OpretLoginBruger extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        // gør at du kommer hen vores side til at logge ind eller oprette dig som bruger
        return "opretLoginBruger";
    }
}
