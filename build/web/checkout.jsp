<%-- 
    Document   : checkout
    Created on : 14 may. 2024, 13:41:51
    Author     : Frank Lopez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pago</title>
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
            form {
                background-color: #fff;
                border: 2px solid #ffcccb;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                padding: 20px;
                width: 300px;
                text-align: center;
            }
            form label {
                display: block;
                margin: 10px 0;
                font-size: 1.2em;
            }
            form input[type="radio"] {
                margin-right: 10px;
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
                margin-top: 20px;
            }
            button:hover {
                background-color: #3366cc;
            }
            .payment-details {
                display: none;
                margin-top: 20px;
            }
            .payment-details img {
                display: block;
                margin: 0 auto;
                max-width: 100%;
            }
            .payment-details input[type="text"] {
                display: block;
                margin: 10px auto;
                padding: 10px;
                width: calc(100% - 20px);
                border: 1px solid #ddd;
                border-radius: 5px;
            }
            #receipt {
                display: none;
                background-color: #fff;
                border: 2px solid #ffcccb;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                padding: 20px;
                width: 300px;
                text-align: center;
                margin-top: 20px;
            }
            #receipt h1 {
                color: #ff9999;
            }
            #receipt hr {
                border: 0;
                border-top: 1px solid #ddd;
                margin: 10px 0;
            }
        </style>
    </head>
    <body>
        <form id="paymentForm" action="CheckoutServlet" method="post">
            <label>
                <input type="radio" name="paymentMethod" value="visa" onchange="showPaymentDetails('visa')"> Visa
            </label><br>
            <label>
                <input type="radio" name="paymentMethod" value="yape" onchange="showPaymentDetails('yape')"> Yape
            </label><br>
            <label>
                <input type="radio" name="paymentMethod" value="plin" onchange="showPaymentDetails('plin')"> Plin
            </label><br>
            <label>
                <input type="radio" name="paymentMethod" value="efectivo" onchange="showPaymentDetails('efectivo')"> Pago Efectivo
            </label><br>
            <button type="submit">Finalizar Compra</button>
        </form>
        <!-- Detalles de pago específicos -->
        <div id="visaDetails" class="payment-details">
            <!-- Campos para la información de la tarjeta de crédito -->
            <label>Número de Tarjeta:</label>
            <input type="text" name="cardNumber"><br>
            <label>Fecha de Expiración:</label>
            <input type="text" name="expiryDate"><br>
            <label>CVV:</label>
            <input type="text" name="cvv"><br>
        </div>

        <div id="yapeDetails" class="payment-details">
            <!-- Mostrar código QR para Yape -->
            <img src="img/yape.png" alt="YAPE"> 
            <!-- Código QR aquí -->
        </div>

        <div id="plinDetails" class="payment-details">
            <!-- Mostrar código QR para Plin -->
            <img src="img/plin.png" alt="PLIN"> 
            <!-- Código QR aquí -->
        </div>

        <div id="efectivoDetails" class="payment-details">
            <h2>Pago Efectivo</h2>
            <p>Estas a punto de finalizar tu compra</p>
            <p>Código de Pago (CIP): <strong>211243525</strong></p>
        </div>
        <button type="button" onclick="finalizePurchase()">Finalizar Compra</button>
        <!-- Código de pago en efectivo aquí -->
    </div>
    <!-- Sección para mostrar la boleta -->
    <div id="receipt">
        <h1>BabyBliss Shop</h1>
        <p>RUC: 20731508588</p>
        <p>Teléfono: 992245544</p>
        <hr>
        <h2>Detalles de la compra:</h2>
        <p>Producto: <span id="productName"></span></p>
        <p>Precio: $<span id="productPrice"></span></p>
        <hr>
        <button onclick="printReceipt()">Imprimir Boleta</button>
    </div>
    <script>
        function showPaymentDetails(paymentMethod) {
            // Ocultar todos los detalles de pago
            var details = document.querySelectorAll('.payment-details');
            details.forEach(function (detail) {
                detail.style.display = 'none';
            });

            // Mostrar el detalle correspondiente
            var selectedDetail = document.getElementById(paymentMethod + 'Details');
            selectedDetail.style.display = 'block';
        }

        function finalizePurchase() {
            // Obtener la opción de pago seleccionada
            var paymentMethod = document.querySelector('input[name="paymentMethod"]:checked').value;

            // Asignar valores de ejemplo para el producto y precio según el método de pago
            if (paymentMethod === "visa") {
                document.getElementById("productName").innerText = "Producto Visa";
                document.getElementById("productPrice").innerText = "20.00";
            } else if (paymentMethod === "yape") {
                document.getElementById("productName").innerText = "Producto Yape";
                document.getElementById("productPrice").innerText = "15.00";
            } else if (paymentMethod === "plin") {
                document.getElementById("productName").innerText = "Producto Plin";
                document.getElementById("productPrice").innerText = "25.00";
            } else if (paymentMethod === "efectivo") {
                document.getElementById("productName").innerText = "Producto Pago Efectivo";
                document.getElementById("productPrice").innerText = "30.00";
            }

            // Mostrar la boleta y ocultar el formulario de pago
            document.getElementById("paymentForm").style.display = 'none';
            document.getElementById("receipt").style.display = 'block';
        }

        function printReceipt() {
            window.print();
        }
    </script>
</body>
</html>
