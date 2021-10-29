package com.download.business;

import java.io.Serializable;
import java.text.NumberFormat;

public class Product implements Serializable {

    private String code;
    private String description;
    private String song1;
    private String song2;
    private double price;

    public Product() {
        code = "";
        description = "";
        song1 = "";
        song2 = "";
        price = 0;
    }

    public Product(String code, String description, String song1, String song2, double price) {
        this.code = code;
        this.description = description;
        this.song1 = song1;
        this.song2 = song2;
        this.price = price;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getCode() {
        return code;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }

    public void setSong1(String song1) {
        this.song1 = song1;
    }
    
    public String getSong1() {
        return song1;
    }

    public void setSong2(String song2) {
        this.song2 = song2;
    }
    
    public String getSong2() {
        return song2;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getPrice() {
        return price;
    }

    public String getPriceCurrencyFormat() {
        NumberFormat currency = NumberFormat.getCurrencyInstance();
        return currency.format(price);
    }
}
