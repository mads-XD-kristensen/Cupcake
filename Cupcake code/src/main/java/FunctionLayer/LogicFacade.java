package FunctionLayer;

import DBAccess.UserMapper;

/**
 * The purpose of LogicFacade is to...
 *
 * @author kasper
 */
public class LogicFacade {

    //Her bliver de informationer sendt videre fra Login.java som brugrern indtastede fra opretLoginBruger.jsp
    public static User login(String email, String password) throws LoginSampleException {
        return UserMapper.login(email, password);
    }

    //Her bliver der lavet en bruger med de informationer som der blev givet fra Register.java og med en role der er customer
    public static User createUser(String email, String password) throws LoginSampleException {
        User user = new User(email, password, "customer");
        UserMapper.createUser(user);
        return user;
    }

}
