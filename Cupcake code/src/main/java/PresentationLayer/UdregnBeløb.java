package PresentationLayer;

public class UdregnBeløb {
    private static double beløb = 0.0;

    public static void beløbIAlt(double top, double bot, int antal) {
        beløb += (top + bot) * antal;
    }

    public static double getBeløb(){
        double tempPris = beløb;
        beløb = 0.0;
        return tempPris;
    }
}
