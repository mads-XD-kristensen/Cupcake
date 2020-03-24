package FunctionLayer.CupcakeTopBot;

public class Order {
    private int top;
    private int bot;
    private int antal;

    public Order(int top, int bot, int antal) {
        this.top = top;
        this.bot = bot;
        this.antal = antal;
    }

    public int getTop() {
        return top;
    }

    public void setTop(int top) {
        this.top = top;
    }

    public int getBot() {
        return bot;
    }

    public void setBot(int bot) {
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
