package ru.netology.netologyrest.repository;

public class Trans {

    public String model;
    public double power;
    public double upVoltage;
    public double downVoltage;
    public double idleLoss;
    public double shortCircuitLoss;
    public double idleCurrent;
    public double shortCircuitVoltage;
    public double resistance;

    public Trans() {
    }

    @Override
    public String toString() {
        return "Trans{" +
                "model='" + model + '\'' +
                ", power=" + power +
                ", upVoltage=" + upVoltage +
                ", downVoltage=" + downVoltage +
                ", idleLoss=" + idleLoss +
                ", shortCircuitLoss=" + shortCircuitLoss +
                ", idleCurrent=" + idleCurrent +
                ", shortCircuitVoltage=" + shortCircuitVoltage +
                ", resistance=" + resistance +
                '}';
    }

    public Trans(String model, double power, double upVoltage, double downVoltage, double idleLoss, double shortCircuitLoss,
                 double idleCurrent, double shortCircuitVoltage, double resistance) {
        this.model = model;
        this.power = power;
        this.upVoltage = upVoltage;
        this.downVoltage = downVoltage;
        this.idleLoss = idleLoss;
        this.shortCircuitLoss = shortCircuitLoss;
        this.idleCurrent = idleCurrent;
        this.shortCircuitVoltage = shortCircuitVoltage;
        this.resistance = resistance;
    }
}