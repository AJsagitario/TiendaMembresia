/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package store;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class AddToCartServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        List<Product> cart = (List<Product>) session.getAttribute("cart");
        if (cart == null) {
            cart = new ArrayList<>();
        }

        String productId = request.getParameter("productId");
        Product product = findProductById(productId);
        if (product != null) {
            cart.add(product);
        }

        session.setAttribute("cart", cart);
        response.sendRedirect("cart.jsp");
    }

    private Product findProductById(String productId) {
        switch (productId) {
            case "1":
                return new Product("img/3081943.png", "Bibeberón con chupón", 10.00);
            case "2":
                return new Product("img/3362525.png", "Bibeberón blue", 20.00);
            case "3":
                return new Product("img/gratis-png-ilustracion-de-oso-gris-tarjeta-de-felicitacion-de-cumpleanos-de-oso-panda-gigante-koala-de-dibujos-animados-gris-removebg-preview.png", "Osito blue", 15.00);
            case "4":
                return new Product("img/images-removebg-preview.png", "Pack osito y polo blue", 40.00);
            case "5":
                return new Product("img/lovepik-cartoon-hand-painted-baby-products-cute-pacifier-png-image_401200730_wh1200-removebg-preview.png", "Chupón blue", 5.00);
            case "6":
                return new Product("img/png-transparent-baby-bottles-plastic-bottle-bottle-removebg-preview.png", "Pack Shampoo BabyBliss", 50.00);
            case "7":
                return new Product("img/png-transparent-baby-transport-infant-cots-baby-accessories-s-blue-child-vertebrate-thumbnail-removebg-preview (1).png", "Transportador BabyBliss", 110.00);
            case "8":
                return new Product("img/png-transparent-pink-pram-bassinet-illustration-infant-boy-baby-transport-baby-shower-pram-baby-people-boy-sticker-thumbnail-removebg-preview.png", "Transportador BabyBliss Pink", 120.00);
            case "9":
                return new Product("img/pngtree-cartoon-baby-stuff-sticker-set-png-image_4338232-removebg-preview.png", "Mega Pack BabyBliss", 340.00);
            default:
                return null;
        }
    }

}
