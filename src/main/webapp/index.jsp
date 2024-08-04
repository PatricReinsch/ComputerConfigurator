<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="beans.BeansConfig" %>
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
        <%
            // Array of product configurations
            String[][] products = {
                {"1", "r5600", "msib550", "rtx4060ti", "16gb", "1tb", "0gb", "x"},
                {"2", "r5600", "msib550", "rtx4070", "32gb", "1tb", "0gb", "win10"},
                {"3", "r5700x", "asusb550", "rtx4080", "32gb", "2tb", "0gb", "win10"},
                {"4", "r5800x", "asusb550", "rx6700xt", "32gb", "2tb", "0gb", "win10"},
                {"5", "r5900", "msix570", "rx6900xt", "64gb", "2tb", "2tb", "win10"},
                {"6", "r5950x", "asusx570", "rtx4090", "64gb", "2tb", "4tb", "win10"}
            };

            for (String[] product : products) {
                String pic = product[0];
                String cpu = product[1];
                String mainboard = product[2];
                String gpu = product[3];
                String ram = product[4];
                String ssd = product[5];
                String hdd = product[6];
                String os = product[7];

                BeansConfig productConfig = new BeansConfig();  // Renamed variable to avoid duplication
                productConfig.setCpu(cpu);
                productConfig.setMainboard(mainboard);
                productConfig.setGpu(gpu);
                productConfig.setRam(ram);
                productConfig.setSsd(ssd);
                productConfig.setHdd(hdd);
                productConfig.setOs(os);
                double price = productConfig.getTotalPrice();
        %>
        <a href="product.jsp?pic=<%= pic %>&cpu=<%= cpu %>&mainboard=<%= mainboard %>&gpu=<%= gpu %>&ram=<%= ram %>&ssd=<%= ssd %>&hdd=<%= hdd %>&os=<%= os %>" class="product-link">
            <div class="product">
                <img src="css/pictures/pc<%= pic %>.jpg" alt="Produkt <%= pic %>">
                <div class="product-details">
                    <h3>Produkt <%= pic %></h3>
                    <p>CPU: <%= cpu %>, GPU: <%= gpu %>, RAM: <%= ram %>, SSD: <%= ssd %></p>
                    <div>Preis: €<%= String.format("%.2f", price) %></div>
                </div>
            </div>
        </a>
        <% } %>
    </div>
</div>

<footer>
    <p>&copy; 2024 Computer Konfigurator Shop. Alle Rechte vorbehalten.</p>
</footer>

<script src="javascript/index.js"></script>

</body>
</html>
