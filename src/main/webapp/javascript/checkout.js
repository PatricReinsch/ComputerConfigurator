document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("buyButton").addEventListener("click", function() {
		
		filled = true
		
		checkIfEmpty("name")
		checkIfEmpty("street")
		checkIfEmpty("house-number")
		checkIfEmpty("city")
		checkIfEmpty("postal-code")
		checkIfEmpty("country")
		checkIfEmpty("card-number")
		checkIfEmpty("expiration-date")
		checkIfEmpty("cvv")
		
		if(filled == false) {
			alert("Bitte gib alle Daten an")
		}
		
		countryInput = document.getElementById('country').value;
		lowerCaseCountry = countryInput.toLowerCase();
		  if (lowerCaseCountry !== 'deutschland') {
		    alert('Wir versenden nur nach Deutschland');
		  }
		
		if (validateCreditCard(document.getElementById("card-number").value)) {
		  console.log("Die Kreditkartennummer ist gültig.");
		} else {
		  alert("Die Kreditkartennummer ist ungültig.");
		}
    });
});

function validateCreditCard(number) {
  // Überprüfe, ob die Länge der Nummer zwischen 13 und 19 liegt
  if (number.length < 13 || number.length > 19) {
    return false;
  }

  // Luhn-Algorithmus Implementierung
  let sum = 0;
  let shouldDouble = false;

  // Iteriere über die Nummer von rechts nach links
  for (let i = number.length - 1; i >= 0; i--) {
    let digit = parseInt(number.charAt(i));

    if (shouldDouble) {
      digit *= 2;
      if (digit > 9) {
        digit -= 9;
      }
    }

    sum += digit;
    shouldDouble = !shouldDouble;
  }

  // Überprüfe, ob die Summe durch 10 teilbar ist
  return (sum % 10) === 0;
}

function checkIfEmpty(elementName) {
	element = document.getElementById(elementName)
	if (element.value == "") {
		element.style.borderColor = "red";
		filled = false
	} else {
		element.style.borderColor = "white";	
	}	
}
