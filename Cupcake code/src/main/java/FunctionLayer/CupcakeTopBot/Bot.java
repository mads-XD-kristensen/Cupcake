package FunctionLayer.CupcakeTopBot;

public class Bot {

    private int id;
    private String name;
    private double price;

    public Bot(int id, String name, Double price) {
        this.name = name;
        this.id = id;
        this.price = price;

    }
    public String getName() {
        return name;
    }

    public double getPrice() {
        return price;
    }

    public int getId() {
        return id;
    }
}
