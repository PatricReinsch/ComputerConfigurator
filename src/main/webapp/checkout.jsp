<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.beans.BeansConfig"%>
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Computer Konfigurator Shop</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>

<header>
    <nav>
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="product.jsp">Konfigurator</a></li>
            <li><a href="help.jsp">Hilfe</a></li>
            <li><a href="impressum.jsp">Impressum</a></li>
        </ul>
    </nav>
    <div class="header-content">
        <h1>Computer Konfigurator Shop</h1>
        <p>Stellen Sie Ihren perfekten Computer zusammen</p>
    </div>
</header>

<div class="container">
    <h2>Kasse</h2>

    <div class="product-container">
        
        <div class="adress">
            <div class="checkout-form">
                <h2>Lieferadresse</h2>
                <!-- Address form remains the same -->
            </div>
        
            <div class="checkout-form">
                <h2>Kreditkarte</h2>
                <!-- Credit card form remains the same -->
            </div>
        </div>

        <div class="recipt">
            <div class="order-summary">
                <h2>Bestellübersicht</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Komponente</th>
                            <th>Auswahl</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Prozessor</td>
                            <td>${config.cpu}</td>
                        </tr>
                        <tr>
                            <td>Grafikkarte</td>
                            <td>${config.gpu}</td>
                        </tr>
                        <tr>
                            <td>Arbeitsspeicher</td>
                            <td>${config.ram}</td>
                        </tr>
                        <tr>
                            <td>Speicher</td>
                            <td>${config.rom}</td>
                        </tr>
                        <tr>
                            <td>Betriebssystem</td>
                            <td>${config.os}</td>
                        </tr>
                        <tr>
                            <td class="total" colspan="2">Gesamtpreis: ${price} €</td>
                        </tr>
                    </tbody>
                </table>
                <button id="buyButton" class="checkout-button">Bestellung abschicken</button>
            </div>
        </div>
        
    </div>
    
</div>

<footer>
    <p>&copy; 2024 Computer Konfigurator Shop. Alle Rechte vorbehalten.</p>
</footer>

</body>
</html>