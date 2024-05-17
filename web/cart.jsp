<%-- 
    Document   : cart
    Created on : 14 may. 2024, 13:40:43
    Author     : Frank Lopez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Carrito de compra</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f9f9f9;
            color: #333;
            margin: 0;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        h1 {
            color: #ff9999;
            font-size: 2.5em;
            margin-bottom: 20px;
        }
        #cart {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 100%;
        }
        .product {
            background-color: #fff;
            border: 2px solid #ffcccb;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 10px;
            padding: 20px;
            text-align: center;
            transition: transform 0.2s, box-shadow 0.2s;
            width: 300px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .product img {
            max-width: 100%;
            border-radius: 10px;
            margin-bottom: 10px;
        }
        .product h2 {
            color: #6699ff;
            font-size: 1.5em;
            margin: 10px 0;
        }
        .product p {
            color: #666;
            font-size: 1.2em;
            margin: 5px 0;
        }
        .product:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        button {
            background-color: #6699ff;
            border: none;
            border-radius: 5px;
            color: white;
            cursor: pointer;
            font-size: 1em;
            padding: 10px 20px;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #3366cc;
        }
    </style>
</head>
<body>
    <h1>Detalles del Producto</h1>
    <div id="cart">
        <c:forEach var="product" items="${sessionScope.cart}">
            <div class="product">
                <img src="${product.image}" alt="${product.name}">
                <h2>${product.name}</h2>
                <p>Precio: $${product.price}</p>
            </div>
        </c:forEach>
    </div>
    <button onclick="location.href = 'checkout.jsp'">Proceder al Pago</button>
</body>
</html>
