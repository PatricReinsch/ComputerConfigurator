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
            <li><a href="produkt.jsp">Konfigurator</a></li>s
            <li><a href="hilfe.jsp">Hilfe</a></li>
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
                <img src="https://via.placeholder.com/600x400" alt="Gaming PC">
                <p>Der ultimative High-End Gaming PC mit der neuesten Hardware, ideal für die anspruchsvollsten Spiele und Anwendungen.</p>
                <ul>
                    <li>Prozessor: Intel Core i9</li>
                    <li>Grafikkarte: NVIDIA GeForce RTX 3080</li>
                    <li>Arbeitsspeicher: 32GB DDR4</li>
                    <li>Speicher: 1TB SSD</li>
                    <li>Betriebssystem: Windows 10</li>
                </ul>
            </div>
            <div class="configurator">
                <h2>Konfigurator</h2>
                <form>
                    <div class="form-group">
                        <label for="cpu">Prozessor:</label>
                        <select id="cpu" name="cpu">
                            <option value="i5">Intel Core i5</option>
                            <option value="i7">Intel Core i7</option>
                            <option value="i9">Intel Core i9</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="gpu">Grafikkarte:</label>
                        <select id="gpu" name="gpu">
                            <option value="rtx3060">NVIDIA GeForce RTX 3060</option>
                            <option value="rtx3070">NVIDIA GeForce RTX 3070</option>
                            <option value="rtx3080">NVIDIA GeForce RTX 3080</option>
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
                        <label for="storage">Speicher:</label>
                        <select id="storage" name="storage">
                            <option value="512gb">512GB SSD</option>
                            <option value="1tb">1TB SSD</option>
                            <option value="2tb">2TB SSD</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="os">Betriebssystem:</label>
                        <select id="os" name="os">
                            <option value="win10">Windows 10</option>
                            <option value="win11">Windows 11</option>
                        </select>
                    </div>
                    <button type="submit" class="button">Konfiguration speichern</button>
                </form>
            </div>
        </div>
    </section>
</main>

<footer>
    <p>&copy; 2024 Computer Konfigurator Shop. Alle Rechte vorbehalten.</p>
</footer>

</body>
</html>
