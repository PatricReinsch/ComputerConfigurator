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
        <a id="choosePC" onclick="navigateToProductPage('1','r5600','msib550','rtx4060ti','16gb','1tb','0gb','x')" class="product-link">
            <div class="product">
                <img src="css/pictures/pc1.jpg" alt="Produkt 1">
                <div class="product-details">
                    <h3>Produkt 1</h3>
                    <p class="info">Ryzen 5 5600, RTX 4060ti, 16gb Ram, 1tb SSD</p>
                    <div class="price">€1299</div>
                </div>
            </div>
        </a>   
        <a id="choosePC" onclick="navigateToProductPage('2','r5600','msib550','rtx4070','32gb','1tb','0gb','win10')" class="product-link">
            <div class="product">
                <img src="css/pictures/pc2.jpg" alt="Produkt 2">
                <div class="product-details">
                    <h3>Produkt 2</h3>
                    <p class="info">Ryzen 5 5600, RTX 4070, 32gb Ram, 1tb SSD</p>
                    <div class="price">€1299</div>
                </div>
            </div>
        </a>   
        <a id="choosePC" onclick="navigateToProductPage('3','r5700x','asusb550','rtx4080','32gb','2tb','0gb','win10')" class="product-link">
            <div class="product">
                <img src="css/pictures/pc3.jpg" alt="Produkt 3">
                <div class="product-details">
                    <h3>Produkt 3</h3>
                    <p class="info">Ryzen 7 5700X, RTX 4080, 32gb Ram, 2tb SSD</p>
                    <div class="price">€1299</div>
                </div>
            </div>
        </a>   
        <a id="choosePC" onclick="navigateToProductPage('4','r5800x','asusb550','rx6700xt','32gb','2tb','0gb','win10')" class="product-link">
            <div class="product">
                <img src="css/pictures/pc4.jpg" alt="Produkt 4">
                <div class="product-details">
                    <h3>Produkt 4</h3>
                    <p class="info">Ryzen 7 5800X, RX 6700XT, 32gb Ram, 2tb SSD</p>
                    <div class="price">€1299</div>
                </div>
            </div>
        </a>        
        <a id="choosePC" onclick="navigateToProductPage('5','r5900','msix570','rx6900xt','64gb','2tb','2tb','win10')" class="product-link">
            <div class="product">
                <img src="css/pictures/pc5.jpg" alt="Produkt 5">
                <div class="product-details">
                    <h3>Produkt 5</h3>
                    <p class="info">Ryzen 9 5900, RX 6900XT, 64gb Ram, 2tb SSD, 2tb HDD</p>
                    <div class="price">€1299</div>
                </div>
            </div>
        </a>   
        <a id="choosePC" onclick="navigateToProductPage('6','r5950x','asusx570','rtx4090','64gb','2tb','4tb','win10')" class="product-link">
            <div class="product">
                <img src="css/pictures/pc6.jpg" alt="Produkt 6">
                <div class="product-details">
                    <h3>Produkt 6</h3>
                    <p class="info">Ryzen 9 5950X, RTX 4090, 64gb Ram, 2tb SSD, 4tb HDD</p>
                    <div class="price">€1299</div>
                </div>
            </div>
        </a>   
    </div>
</div>

<footer>
    <p>&copy; 2024 Computer Konfigurator Shop. Alle Rechte vorbehalten.</p>
</footer>

</body>
</html>
<script src="javascript/index.js"></script>
