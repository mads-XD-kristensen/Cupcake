package PresentationLayer;

import FunctionLayer.LoginSampleException;

import java.util.HashMap;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

abstract class Command {

    private static HashMap<String, Command> commands;

    private static void initCommands() {
        commands = new HashMap<>();
        commands.put("login", new Login());
        commands.put("register", new Register());
        commands.put("ordrer", new Ordrer());
        commands.put("kunder", new Kunder());
        commands.put("kurv", new Kurv());
        commands.put("opretlogin", new OpretLoginBruger());
        commands.put("addToBasket", new AddKurv());
        commands.put("admin", new Admin());
        commands.put("addSaldo", new addSaldo());
        commands.put("koeb", new Koeb());

    }

    static Command from(HttpServletRequest request) {
        String TagetName = request.getParameter("taget");
        if (commands == null) {
            initCommands();
        }
        return commands.getOrDefault(TagetName, new UnknownCommand());   // unknowncommand er default.
    }

    abstract String execute(HttpServletRequest request, HttpServletResponse response)
            throws LoginSampleException;

}
