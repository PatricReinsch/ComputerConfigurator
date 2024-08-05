// Wait for the DOM to be fully loaded before executing the script
document.addEventListener("DOMContentLoaded", function() {
	// Add a click event listener to the button with the ID "buyButton"
	document.getElementById("buyButton").addEventListener("click", function() {

		// Flag to check if all fields are filled
		filled = true;

		// Check if each required field is empty
		checkIfEmpty("name");
		checkIfEmpty("street");
		checkIfEmpty("house-number");
		checkIfEmpty("city");
		checkIfEmpty("postal-code");
		checkIfEmpty("country");
		checkIfEmpty("card-number");
		checkIfEmpty("expiration-date");
		checkIfEmpty("cvv");

		// Get the value of the country input and convert it to lowercase
		countryInput = document.getElementById('country').value;
		lowerCaseCountry = countryInput.toLowerCase();

		// If any field is empty, alert the user
		if (filled == false) {
			alert("Please fill in all required fields.");
		} else if (lowerCaseCountry !== 'deutschland') {
			// Check if the country is not 'Deutschland', if so, alert the user
			alert('We only ship to Germany.');

		} else if (validateCreditCard(document.getElementById("card-number").value)) {
			console.log("The credit card number is valid.");
			alert("The ordering process succeed!");
		} else {
			alert("The credit card number is invalid.");
		}



		// Validate the credit card number
		if (validateCreditCard(document.getElementById("card-number").value)) {
			console.log("The credit card number is valid.");
		} else {
			alert("The credit card number is invalid.");
		}
	});
});

// Function to validate the credit card number using the Luhn algorithm
function validateCreditCard(number) {
	// Check if the length of the number is between 13 and 19
	if (number.length < 13 || number.length > 19) {
		return false;
	}

	// Luhn algorithm implementation
	let sum = 0;
	let shouldDouble = false;

	// Iterate over the number from right to left
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

	// Check if the sum is divisible by 10
	return (sum % 10) === 0;
}

// Function to check if an input field is empty and update its border color
function checkIfEmpty(elementName) {
	element = document.getElementById(elementName);
	if (element.value == "") {
		element.style.borderColor = "red";
		filled = false;
	} else {
		element.style.borderColor = "white";
	}
}
