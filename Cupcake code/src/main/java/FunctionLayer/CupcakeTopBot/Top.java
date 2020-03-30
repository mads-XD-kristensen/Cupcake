package FunctionLayer.CupcakeTopBot;

public class Top {

    private int id;
    private String name;
    private double price;


    public Top( String name, double price) {
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

    public void setId(int id) {
        this.id = id;
    }

    public void setPrice(double pris) {
        this.price = pris;
    }
}