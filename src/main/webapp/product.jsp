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

<main>
    <section class="product-details">
        <h2>Gaming PC</h2>
        <div class="product-container">
            <div class="product-info">
                <!-- Use JSP to set the image source -->
                <%
                    String pic = request.getParameter("pic");
                    if (pic == null || pic.isEmpty()) {
                        pic = "pc1"; // Fallback image if no parameter is provided
                    }
                %>
                <img id="pic" src="css/pictures/pc<%= pic %>.jpg" alt="Gaming PC">
            </div>
            <div class="configurator">
                <h2>Konfigurator</h2>
                <form action="config" method="post">
                    <div class="form-group">
                        <label for="cpu">Prozessor:</label>
                        <select id="cpu" name="cpu">
                            <option value="r5950x">Ryzen 9 5950X</option>
                            <option value="r5900x">Ryzen 9 5900X</option>
                            <option value="r5900">Ryzen 9 5900</option>
                            <option value="r5800x3d">Ryzen 7 5800X3D</option>
                            <option value="r5800x">Ryzen 7 5800X</option>
                            <option value="r5800">Ryzen 7 5800</option>
                            <option value="r5700x3d">Ryzen 7 5700X3D</option>
                            <option value="r5700x">Ryzen 7 5700X</option>
                            <option value="r5600x">Ryzen 5 5600X</option>
                            <option value="r5600">Ryzen 5 5600</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="mainboard">Mainboard:</label>
                        <select id="mainboard" name="mainboard">
                            <option value="msib550">MSI B550</option>
                            <option value="asusb550">ASUS B550</option>
                            <option value="msix570">MSI X570</option>
                            <option value="asusx570">ASUS X570</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="gpu">Grafikkarte:</label>
                        <select id="gpu" name="gpu">
                            <optgroup label="Nvidia">
                                <option value="rtx4090">RTX 4090</option>
                                <option value="rtx4080ti">RTX 4080 Ti</option>
                                <option value="rtx4080">RTX 4080</option>
                                <option value="rtx4070">RTX 4070</option>
                                <option value="rtx4060ti">RTX 4060 Ti</option>
                            </optgroup>
                            <optgroup label="AMD">
                                <option value="rx6800xt">RX 6800 XT</option>
                                <option value="rx6700xt">RX 6700 XT</option>
                                <option value="rx6900xt">RX 6900 XT</option>
                                <option value="rx6600xt">RX 6600 XT</option>
                                <option value="rx6800">RX 6800</option>
                            </optgroup>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="ram">Arbeitsspeicher:</label>
                        <select id="ram" name="ram">
                            <option value="16gb">16GB DDR4</option>
                            <option value="32gb">32GB DDR4</option>
                            <option value="64gb">64GB DDR4</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="ssd">SSD:</label>
                        <select id="ssd" name="ssd">
                            <option value="0gb">Keine</option>
                            <option value="512gb">512GB SSD</option>
                            <option value="1tb">1TB SSD</option>
                            <option value="2tb">2TB SSD</option>
                            <option value="4tb">4TB SSD</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="hdd">HDD:</label>
                        <select id="hdd" name="hdd">
                            <option value="0gb_hdd">Keine</option>
                            <option value="1tb_hdd">1TB HDD</option>
                            <option value="2tb_hdd">2TB HDD</option>
                            <option value="4tb_hdd">4TB HDD</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="os">Betriebssystem:</label>
                        <select id="os" name="os">
                            <option value="x">Keins</option>
                            <option value="win10">Windows 10</option>
                            <option value="win11">Windows 11</option>
                        </select>
                    </div>
                    <button type="submit">Zum Checkout</button>
                </form>
            </div>
        </div>
    </section>
</main>

<footer>
    <p>&copy; 2024 Computer Konfigurator Shop. Alle Rechte vorbehalten.</p>
</footer>

<script src="javascript/product.js"></script>

</body>
</html>
