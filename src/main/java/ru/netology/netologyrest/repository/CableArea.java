package ru.netology.netologyrest.repository;

public class CableArea {
    protected double cableLength;
    protected double cableSection;
    protected String cableMaterial;

    @Override
    public String toString() {
        return "CableArea{" +
                "cableLength=" + cableLength +
                ", cableSection=" + cableSection +
                ", cableMaterial='" + cableMaterial + '\'' +
                '}';
    }

    public double getCableSection() {
        return cableSection;
    }

    public void setCableSection(int cableSection) {
        this.cableSection = cableSection;
    }

    public String getCableMaterial() {
        return cableMaterial;
    }

    public void setCableMaterial(String cableMaterial) {
        this.cableMaterial = cableMaterial;
    }

    public CableArea(int cableLength, int cableSection, String cableMaterial) {
        this.cableLength = cableLength;
        this.cableSection = cableSection;
        this.cableMaterial = cableMaterial;
    }

    public double getCableLength() {
        return cableLength;
    }

    public void setCableLength(int cableLength) {
        this.cableLength = cableLength;
    }
}
