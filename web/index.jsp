<%-- 
    Document   : index
    Created on : 14 may. 2024, 13:27:45
    Author     : Frank Lopez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f9f9f9;
            color: #333;
            margin: 0;
            padding: 0;
        }

        #header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
            background-color: #ffcccb;
        }

        h1 {
            color: #ff9999;
            font-size: 2.5em;
            margin: 0;
        }

        #cart {
            display: flex;
            align-items: center;
            gap: 10px;
            padding: 20px;
            text-align: center;
        }

        #cart-logo {
            max-width: 50px;
        }

        #cart-count {
            background-color: #ff9999;
            border-radius: 50%;
            color: white;
            font-size: 1.2em;
            padding: 5px 10px;
        }

        #cart button {
            background-color: #6699ff;
            border: none;
            border-radius: 5px;
            color: white;
            cursor: pointer;
            font-size: 1em;
            padding: 10px 20px;
            transition: background-color 0.3s;
        }

        #cart button:hover {
            background-color: #3366cc;
        }

        #products {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin: 20px;
        }

        .product {
            background-color: #fff;
            border: 2px solid #ffcccb;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            margin: 10px;
            padding: 20px;
            text-align: center;
            transition: transform 0.2s, box-shadow 0.2s;
            width: 200px;
        }

        .product img {
            max-width: 100%;
            border-radius: 10px;
        }

        .product h2 {
            color: #6699ff;
            font-size: 1.5em;
            margin: 10px 0;
        }

        .product p {
            color: #666;
            font-size: 1.2em;
        }

        .product button {
            background-color: #ff9999;
            border: none;
            border-radius: 5px;
            color: white;
            cursor: pointer;
            font-size: 1em;
            margin-top: 10px;
            padding: 10px 20px;
            transition: background-color 0.3s;
        }

        .product button:hover {
            background-color: #ff6666;
        }

        .product:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0,0,0,0.2);
        }

    </style>
    <body>
        <div id="header">
            <h1>BabyBliss Shop</h1>
            <div id="cart">
                <img src="img/6136434.png" alt="Logo Carrito" id="cart-logo">
                <span id="cart-count">0</span></p>
                <button onclick="location.href = 'cart.jsp'">Ver Carrito</button>
            </div>
        </div>
        <div id="products">
            <!-- Producto 1 -->
            <div class="product">
                <img src="img/3081943.png" alt="Producto 1">            
                <h2>Bibeberón con chupón</h2>
                <p>Precio: $10.00</p>
                <button onclick="addToCart(1)">Agregar al carrito</button>
            </div>
            <!-- Producto 2 -->
            <div class="product">
                <img src="img/3362525.png" alt="Producto 2">
                <h2>Bibeberón blue</h2>
                <p>Precio: $20.00</p>
                <button onclick="addToCart(2)">Agregar al carrito</button>
            </div>
            <div class="product">
                <img src="img/gratis-png-ilustracion-de-oso-gris-tarjeta-de-felicitacion-de-cumpleanos-de-oso-panda-gigante-koala-de-dibujos-animados-gris-removebg-preview.png" alt="Producto 3">
                <h2>Osito blue</h2>
                <p>Precio: $15.00</p>
                <button onclick="addToCart(2)">Agregar al carrito</button>
            </div>
            <div class="product">
                <img src="img/images-removebg-preview.png" alt="Producto 4">
                <h2>Pack osito y polo blue</h2>
                <p>Precio: $40.00</p>
                <button onclick="addToCart(2)">Agregar al carrito</button>
            </div>
            <div class="product">
                <img src="img/lovepik-cartoon-hand-painted-baby-products-cute-pacifier-png-image_401200730_wh1200-removebg-preview.png" alt="Producto 5">
                <h2>Chupón blue</h2>
                <p>Precio: $5.00</p>
                <button onclick="addToCart(2)">Agregar al carrito</button>
            </div>
            <div class="product">
                <img src="img/png-transparent-baby-bottles-plastic-bottle-bottle-removebg-preview.png" alt="Producto 6">
                <h2>Pack Shampoo BabyBliss</h2>
                <p>Precio: $50.00</p>
                <button onclick="addToCart(2)">Agregar al carrito</button>
            </div>
            <div class="product">
                <img src="img/png-transparent-baby-transport-infant-cots-baby-accessories-s-blue-child-vertebrate-thumbnail-removebg-preview (1).png" alt="Producto 7">
                <h2>Transportador BabyBliss</h2>
                <p>Precio: $110.00</p>
                <button onclick="addToCart(2)">Agregar al carrito</button>
            </div>
            <div class="product">
                <img src="img/png-transparent-pink-pram-bassinet-illustration-infant-boy-baby-transport-baby-shower-pram-baby-people-boy-sticker-thumbnail-removebg-preview.png" alt="Producto 8">
                <h2>Transportador BabyBliss Pink</h2>
                <p>Precio: $120.00</p>
                <button onclick="addToCart(2)">Agregar al carrito</button>
            </div>
            <div class="product">
                <img src="img/pngtree-cartoon-baby-stuff-sticker-set-png-image_4338232-removebg-preview.png" alt="Producto 9">
                <h2>Mega Pack BabyBliss</h2>
                <p>Precio: $340.00</p>
                <button onclick="addToCart(2)">Agregar al carrito</button>
            </div>
        </div>
        <!-- JavaScript para enviar la solicitud POST al servlet -->
        <script>
            function addToCart(productId) {
                // Incrementar el contador de productos en el carrito
                var cartCount = document.getElementById("cart-count");
                cartCount.textContent = parseInt(cartCount.textContent) + 1;

                // Enviar la solicitud POST al servlet
                var xhr = new XMLHttpRequest();
                xhr.open("POST", "AddToCartServlet", true);
                xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                xhr.send("productId=" + productId);
            }
        </script>
    </body>

</html>
