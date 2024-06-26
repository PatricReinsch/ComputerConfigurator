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
                <div class="form-group">
                    <label for="fullname">Vollständiger Name:</label>
                    <input type="text" id="fullname" name="fullname" required>
                </div>
                <div class="form-group">
                    <label for="address">Straße und Hausnummer:</label>
                    <input type="text" id="address" name="address" required>
                </div>
                <div class="form-group">
                    <label for="city">Stadt:</label>
                    <input type="text" id="city" name="city" required>
                </div>
                <div class="form-group">
                    <label for="postalcode">Postleitzahl:</label>
                    <input type="text" id="postalcode" name="postalcode" required>
                </div>
                <div class="form-group">
                    <label for="country">Land:</label>
                    <input type="text" id="country" name="country" required>
                </div>
            </div>
        
            <div class="checkout-form">
                <h2>Zahlungsmethode</h2>
                <div class="form-group">
                    <label for="cardname">Name auf der Karte:</label>
                    <input type="text" id="cardname" name="cardname" required>
                </div>
                <div class="form-group">
                    <label for="cardnumber">Kartennummer:</label>
                    <input type="text" id="cardnumber" name="cardnumber" required>
                </div>
                <div class="form-group">
                    <label for="expdate">Ablaufdatum:</label>
                    <input type="text" id="expdate" name="expdate" placeholder="MM/JJ" required>
                </div>
                <div class="form-group">
                    <label for="cvv">CVV:</label>
                    <input type="text" id="cvv" name="cvv" required>
                </div>
            </div>
        </div>
        <div class="recipt">
            <div class="order-summary">
                <h2>Bestellübersicht</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Produkt</th>
                            <th>Menge</th>
                            <th>Preis</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Produkt 1</td>
                            <td>1</td>
                            <td>10,00 €</td>
                        </tr>
                        <tr>
                            <td>Produkt 2</td>
                            <td>2</td>
                            <td>20,00 €</td>
                        </tr>
                        <tr>
                            <td class="total" colspan="2">Gesamt:</td>
                            <td>30,00 €</td>
                        </tr>
                    </tbody>
                </table>
                <button class="checkout-button">Bestellung abschicken</button>
            </div>
    </div>
    
    </div>
    
</div>

<footer>
    <p>&copy; 2024 Computer Konfigurator Shop. Alle Rechte vorbehalten.</p>
</footer>

</body>
</html>
