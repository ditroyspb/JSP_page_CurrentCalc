package ru.netology.netologyrest.repository;

public class ThreePhaseTrans {

    public double power;
    public int scheme;
    public double resistance;

    public ThreePhaseTrans() {
    }

    @Override
    public String toString() {
        return "ThreePhaseTrans{" +
                "power=" + power +
                ", scheme(1 - Y/Y, 2 - Y/Z, D/Y)=" + scheme +
                ", resistance=" + resistance +
                '}';
    }

    public ThreePhaseTrans(double power, int scheme, double resistance) {
        this.power = power;
        this.scheme = scheme;
        this.resistance = resistance;


    }
}
