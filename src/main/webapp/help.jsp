<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="de">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Computer Konfigurator Shop</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="css/styles.css">
</head>
<body>

	<header>
		<!-- Menu -->
		<nav>
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="product.jsp">Konfigurator</a></li>
				<li><a href="help.jsp">Hilfe</a></li>
				<li><a href="impressum.jsp">Impressum</a></li>
			</ul>
		</nav>
		<!-- head content -->
		<div class="header-content">
			<h1>Computer Konfigurator Shop</h1>
			<p>Stellen Sie Ihren perfekten Computer zusammen</p>
		</div>
	</header>
	<!-- FAQ -->
	<div class="container">
		<h2>Hilfe (FAQ)</h2>
		<button class="accordion">Wie bestelle ich einen PC über den
			Konfigurator?</button>
		<div class="panel">
			<p>Wählen Sie zunächst die gewünschte Basis-Konfiguration aus.
				Anschließend können Sie die einzelnen Komponenten nach Ihren
				Wünschen anpassen. Sobald Sie mit der Konfiguration zufrieden sind,
				können Sie das Produkt an der Kasse bezahlen und den Bestellprozess
				abschließen.</p>
		</div>

		<button class="accordion">Kann ich meine Bestellung
			nachträglich ändern?</button>
		<div class="panel">
			<p>Änderungen an der Bestellung sind möglich, solange der PC noch
				nicht zusammengebaut wurde. Bitte kontaktieren Sie unseren
				Kundenservice so schnell wie möglich, um Änderungen vorzunehmen.</p>
		</div>

		<button class="accordion">Wie lange dauert die Lieferung
			meines konfigurierten PCs?</button>
		<div class="panel">
			<p>Die Lieferzeit hängt von der Verfügbarkeit der Komponenten und
				der Komplexität der Konfiguration ab. In der Regel beträgt die
				Lieferzeit 7-14 Werktage. Sie erhalten eine Benachrichtigung, sobald
				Ihr PC versandbereit ist.</p>
		</div>

		<button class="accordion">Kann ich meinen PC auch ins Ausland
			liefern lassen?</button>
		<div class="panel">
			<p>Nein, wir versenden unserer Produkte nur innerhalb
				Deutschlands.</p>
		</div>

		<button class="accordion">Welche Zahlungsmethoden akzeptieren
			Sie?</button>
		<div class="panel">
			<p>Wir akzeptieren nur Zahlungen mit einer gültigen Kreditkarte.</p>
		</div>
	</div>

	<footer>
		<p>&copy; 2024 Computer Konfigurator Shop. Alle Rechte
			vorbehalten.</p>
	</footer>

</body>
</html>
<script src="javascript/help.js"></script>
