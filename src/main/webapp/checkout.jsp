<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="beans.BeansConfig"%>
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Computer Konfigurator Shop</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/styles.css">
    <style>
    button {
    	margin-top: 10px;
    	background-color: #001D3D;
    	color: white;
    	border: none; 
    	padding: 10px 20px; 
    	font-size: 1em; 
    	border-radius: 5px; 
	}
	button:hover {
    	background-color: #003566; 
	}  
    </style>
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
                       <form action="/submit" method="POST">
        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" id="name" name="name" placeholder="Name" required>
        </div>
        <div class="product-container">
            <div class="checkout-form form-group">
                <label for="street">Straße</label>
                <input type="text" id="street" name="street" placeholder="Straße" required>
            </div>
            <div class="checkout-form form-group">
                <label for="house-number">Hausnummer</label>
                <input type="number" id="house-number" name="house-number" placeholder="Hausnummer" required>
            </div>
            </div>
        <div class="product-container">
            <div class="checkout-form form-group">
                <label for="city">Stadt</label>
                <input type="text" id="city" name="city" placeholder="Stadt" required>
            </div>
            <div class="checkout-form form-group">
                <label for="postal-code">Postleitzahl</label>
                <input type="number" id="postal-code" name="postal-code" placeholder="Postleitzahl" required>
            </div>
        </div>
        <div class="form-group">
            <label for="country">Land</label>
            <input type="text" id="country" name="country" placeholder="Land" required>
        </div>
    </form>
            </div>
        
            <div class="checkout-form">
                <h2>Kreditkarte</h2>
                <!-- Credit card form remains the same -->
                <div class="form-group">
            <label for="card-number">Kreditkartennummer</label>
            <input type="number" id="card-number" name="card-number" placeholder="Kreditkartennummer" required>
        </div>
        <div class="product-container">
            <div class="checkout-form  form-group">
                <label for="expiration-date">Ablaufdatum (MM/JJ)</label>
                <input type="text" id="expiration-date" name="expiration-date" placeholder="MM/JJ" required>
            </div>
            <div class="checkout-form  form-group">
                <label for="cvv">CVV</label>
                <input type="number" id="cvv" name="cvv" placeholder="CVV" required>
            </div>
        </div>
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
                            <th>Preis</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Prozessor</td>
                            <td>${config.cpu}</td>
                            <td>${config.cpuPrice}</td>
                        </tr>
                         <tr>
                            <td>Mainboard</td>
                            <td>${config.mainboard}</td>
                            <td>${config.mainboardPrice}</td>
                        </tr>
                        <tr>
                            <td>Grafikkarte</td>
                            <td>${config.gpu}</td>
                            <td>${config.gpuPrice}</td>
                        </tr>
                        <tr>
                            <td>Arbeitsspeicher</td>
                            <td>${config.ram}</td>
                            <td>${config.ramPrice}</td>
                        </tr>
                        <tr>
                            <td>Speicher SSD</td>
                            <td>${config.ssd}</td>
                            <td>${config.ssdPrice}</td>
                        </tr>
                        <tr>
                            <td>Speicher HDD</td>
                            <td>${config.hdd}</td>
                            <td>${config.hddPrice}</td>
                        </tr>
                        <tr>
                            <td>Betriebssystem</td>
                            <td>${config.os}</td>
                            <td>${config.osPrice}</td>
                        </tr>
                        <tr>
                            <td class="total" colspan="3">Gesamtpreis: ${config.getTotalPrice()} €</td>
                        </tr>
                    </tbody>
                </table>
                <button id="buyButton">Bestellung abschicken</button>
            </div>
        </div>
    </div> 
</div>

<footer>
    <p>&copy; 2024 Computer Konfigurator Shop. Alle Rechte vorbehalten.</p>
</footer>

</body>
</html>
<script src="javascript/checkout.js"></script>