<%-- 
    Document   : membresía
    Created on : 16 may. 2024, 11:32:17
    Author     : Frank Lopez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adquirir Membresía</title>
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
            .membership-button {
                background-color: #ffcccb;
                border: 2px solid #ff9999;
                border-radius: 10px;
                padding: 20px;
                font-size: 1.5em;
                cursor: pointer;
                transition: background-color 0.3s;
                text-align: center;
            }
            .membership-button:hover {
                background-color: #ff9999;
            }
            .payment-form {
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
            .payment-form label {
                display: block;
                margin: 10px 0;
                font-size: 1.2em;
            }
            .payment-form input[type="radio"] {
                margin-right: 10px;
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
            #thankYouMessage {
                display: none;
                text-align: center;
                margin-top: 20px;
            }
        </style>
        <script>
            function showPaymentForm() {
                document.getElementById('paymentForm').style.display = 'block';
            }

            function showPaymentDetails(method) {
                document.querySelectorAll('.payment-details').forEach(function (el) {
                    el.style.display = 'none';
                });
                document.getElementById(method + 'Details').style.display = 'block';
            }

            function finalizeMembership() {
                document.getElementById('paymentForm').style.display = 'none';
                document.getElementById('thankYouMessage').style.display = 'block';
                setTimeout(function () {
                    window.location.href = 'index.jsp';
                }, 3000);
            }
        </script>
    </head>
    <body>
        <h1>Adquirir Membresía</h1>
    <div class="membership-button" onclick="showPaymentForm()">
        Membresía - $9.99
    </div>
    <div id="paymentForm" class="payment-form">
        <h2>Seleccione su método de pago</h2>
        <form id="paymentMethodForm">
            <label>
                <input type="radio" name="paymentMethod" value="visa" onchange="showPaymentDetails('visa')"> Visa
            </label>
            <label>
                <input type="radio" name="paymentMethod" value="yape" onchange="showPaymentDetails('yape')"> Yape
            </label>
            <label>
                <input type="radio" name="paymentMethod" value="plin" onchange="showPaymentDetails('plin')"> Plin
            </label>
            <label>
                <input type="radio" name="paymentMethod" value="efectivo" onchange="showPaymentDetails('efectivo')"> Pago Efectivo
            </label>
            <div id="visaDetails" class="payment-details">
                <label>Número de Tarjeta:</label>
                <input type="text" name="cardNumber">
                <label>Fecha de Expiración:</label>
                <input type="text" name="expiryDate">
                <label>CVV:</label>
                <input type="text" name="cvv">
            </div>
            <div id="yapeDetails" class="payment-details">
                <img src="img/yape.png" alt="YAPE">
            </div>
            <div id="plinDetails" class="payment-details">
                <img src="img/plin.png" alt="PLIN">
            </div>
            <div id="efectivoDetails" class="payment-details">
                <h2>Pago Efectivo</h2>
                <p>Estas a punto de adquirir tu membresía</p>
                <p>Código de Pago (CIP): <strong>211243525</strong></p>
            </div>
            <button type="button" onclick="finalizeMembership()">Finalizar Compra</button>
        </form>
    </div>
    <div id="thankYouMessage">
        <h2>Gracias por adquirir la membresía</h2>
    </div>
    </body>
</html>
