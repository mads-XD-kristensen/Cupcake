package FunctionLayer.CupcakeTopBot;

public class Top {

    private int id;
    private String name;
    private double price;


    public Top(int id, String name, double price) {
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