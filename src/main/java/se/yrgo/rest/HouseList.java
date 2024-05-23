package se.yrgo.rest;

import se.yrgo.domain.House;

import java.util.List;

public class HouseList {
    private List<House> houses;

    public HouseList() {
    }

    public HouseList(List<House> vehicles) {
        this.houses = houses;
    }

    public List<House> getHouses() {
        return houses;
    }

    public void setHouses(List<House> houses) {
        this.houses = houses;
    }
}
