package FunctionLayer.CupcakeTopBot;

public class order {
    private String top;
    private String bot;
    private int antal;

    public order(String top, String bot, int antal) {
        this.top = top;
        this.bot = bot;
        this.antal = antal;
    }

    public String getTop() {
        return top;
    }

    public void setTop(String top) {
        this.top = top;
    }

    public String getBot() {
        return bot;
    }

    public void setBot(String bot) {
        this.bot = bot;
    }

    public int getAntal() {
        return antal;
    }

    public void setAntal(int antal) {
        this.antal = antal;
    }

    @Override
    public String toString() {
        return "Order{" +
                "top=" + top +
                ", bot=" + bot +
                ", antal=" + antal +
                '}';
    }
}
