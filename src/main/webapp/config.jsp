<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Configuration Result</title>
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
</header>

<main>
    <section class="config-result">
        <h2>Configuration Result</h2>
        <p>You have configured the following setup:</p>
        <ul>
            <li><strong>Prozessor:</strong> ${config.cpu}</li>
            <li><strong>Grafikkarte:</strong> ${config.gpu}</li>
            <li><strong>Arbeitsspeicher:</strong> ${config.ram}</li>
            <li><strong>Speicher:</strong> ${config.rom}</li>
            <li><strong>Betriebssystem:</strong> ${config.os}</li>
        </ul>
    </section>
</main>

<footer>
    <p>&copy; 2024 Computer Konfigurator Shop. Alle Rechte vorbehalten.</p>
</footer>

</body>
</html>