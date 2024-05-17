/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package store;

public class Product {

    private String image;
    private String name;
    private double price;

    public Product(String image, String name, double price) {
        this.image = image;
        this.name = name;
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public String getName() {
        return name;
    }

    public double getPrice() {
        return price;
    }

}
