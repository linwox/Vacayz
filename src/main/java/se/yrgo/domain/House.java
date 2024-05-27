package se.yrgo.domain;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class House {
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Id
    private long id;
    private String objectId;
    private String address;
    private String area;
    private String location;
    private int maxGuests;
    private boolean available;
    private String imageUrl = "https://media.istockphoto.com/id/155666671/sv/vektor/vector-illustration-of-red-house-icon.jpg?s=612x612&w=0&k=20&c=FcZjBqvSxmb1MZcCmxolBmeyPw6U2ume64aioih8X0A=";

    public House() {}

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getObjectId() {
        return objectId;
    }

    public void setObjectId(String objectId) {
        this.objectId = objectId;
    }


    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public int getMaxGuests() {
        return maxGuests;
    }

    public void setMaxGuests(int maxGuests) {
        this.maxGuests = maxGuests;
    }

    public boolean isAvailable() {
        return available;
    }

    public void setAvailable(boolean available) {
        this.available = available;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    @Override
    public String toString() {
        return String.format("ID: %d --- Object-ID: %s --- Available: %b",
                id, objectId, available);
    }
}