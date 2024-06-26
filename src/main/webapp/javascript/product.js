window.onload = function() {
    // Parameter aus der URL lesen
    var params = new URLSearchParams(window.location.search);
    var cpu = params.get('cpu'); // Parameter 'option' auslesen
    var pic = params.get('pic'); // Parameter 'option' auslesen

    console.log(cpu);
    console.log(pic);

    var bildElement = document.getElementById('pic');

    // Dropdown-Menü entsprechend der übergebenen Option auswählen
    var dropdown = document.getElementById('cpu');
    if (cpu) {
        dropdown.value = cpu;
    }
    if (pic) {
        console.log(bildElement.src = 'css/pictures/pc' + pic + ".jpeg");
        bildElement.src = 'css/pictures/pc' + pic + ".jpg";
    }
};