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
    <h2>Unsere Produkte</h2>
    <div class="product-grid">
        <div class="product">
            <img src="css/pictures/pc1.jpg" alt="Produkt 1">
            <div class="product-details">
                <h3>Produkt 1</h3>
                <p>Beschreibung von Produkt 1</p>
                <div class="price">€999</div>
            </div>
        </div>
        <div class="product">
            <img src="css/pictures/pc2.jpg" alt="Produkt 2">
            <div class="product-details">
                <h3>Produkt 2</h3>
                <p>Beschreibung von Produkt 2</p>
                <div class="price">€1199</div>
            </div>
        </div>
        <div class="product">
            <img src="css/pictures/pc3.jpg" alt="Produkt 3">
            <div class="product-details">
                <h3>Produkt 3</h3>
                <p>Beschreibung von Produkt 3</p>
                <div class="price">€799</div>
            </div>
        </div>
        <a id="choosePC" onclick="navigateToProductPage('4','r5600')" class="product-link">
            <div class="product">
                <img src="css/pictures/pc4.jpg" alt="Produkt 4">
                <div class="product-details">
                    <h3>Produkt 4</h3>
                    <p>Beschreibung von Produkt 4</p>
                    <div class="price">€1299</div>
                </div>
            </div>
        </a>        
        <div class="product">
            <img src="css/pictures/pc5.jpg" alt="Produkt 5">
            <div class="product-details">
                <h3>Produkt 5</h3>
                <p>Beschreibung von Produkt 5</p>
                <div class="price">€899</div>
            </div>
        </div>
        <div class="product">
            <img src="css/pictures/pc6.jpg" alt="Produkt 6">
            <div class="product-details">
                <h3>Produkt 6</h3>
                <p>Beschreibung von Produkt 6</p>
                <div class="price">€1499</div>
            </div>
        </div>
    </div>
</div>

<footer>
    <p>&copy; 2024 Computer Konfigurator Shop. Alle Rechte vorbehalten.</p>
</footer>

</body>
</html>
<script src="javascript/index.js"></script>
