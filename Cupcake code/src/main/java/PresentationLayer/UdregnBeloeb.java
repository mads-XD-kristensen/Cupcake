package PresentationLayer;

public class UdregnBeloeb {
    private static double beloeb = 0.0;

    //Udregner beløbet
    public static void prisIAlt(double top, double bot, int antal) {
        beloeb += (top + bot) * antal;
    }

    public static double getPris() {
        double tempPris = beloeb;
        beloeb = 0.0;
        return tempPris;
    }
}
