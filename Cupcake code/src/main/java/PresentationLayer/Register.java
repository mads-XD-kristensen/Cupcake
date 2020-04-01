package PresentationLayer;

import FunctionLayer.LogicFacade;
import FunctionLayer.LoginSampleException;
import FunctionLayer.User;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

// en metoder der opretter et nyt medlem
public class Register extends Command {

    @Override
    String execute( HttpServletRequest request, HttpServletResponse response ) throws LoginSampleException {
        //sætter nogle variabler som den får fra opretLoginBruger.jsp siden
        String email = request.getParameter( "email" );
        String password1 = request.getParameter( "password1" );
        String password2 = request.getParameter( "password2" );
        //søger for at de to indtastede passwords er de samme
       if ( password1.equals( password2 ) ) {
           //Laver en ny user med createUser fra LogicFacade
            User user = LogicFacade.createUser( email, password1 );
            HttpSession session = request.getSession();

            session.setAttribute("email",email);
            session.setAttribute( "user", user );
            session.setAttribute( "role", user.getRole() );
            return "../index";
        } else {
            throw new LoginSampleException( "the two passwords did not match" );
        }
    }

}
