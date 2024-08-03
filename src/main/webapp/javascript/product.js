window.onload = function() {
    // Parameter aus der URL lesen
    var params = new URLSearchParams(window.location.search);

    var pic = params.get('pic'); // Parameter 'pic' auslesen
    var cpu = params.get('cpu'); // Parameter 'cpu' auslesen
    var mainboard = params.get('mainboard'); // Parameter 'mainboard' auslesen
    var gpu = params.get('gpu'); // Parameter 'gpu' auslesen
    var ram = params.get('ram'); // Parameter 'ram' auslesen
    var ssd = params.get('ssd'); // Parameter 'ssd' auslesen
    var hdd = params.get('hdd'); // Parameter 'hdd' auslesen
    var os = params.get('os'); // Parameter 'os' auslesen

    var bildElement = document.getElementById('pic');

    // Dropdown-Menü entsprechend der übergebenen Option auswählen
    var cpuSelect = document.getElementById('cpu');
    var mainboardSelect = document.getElementById('mainboard');
    var gpuSelect = document.getElementById('gpu');
    var ramSelect = document.getElementById('ram');
    var ssdSelect = document.getElementById('ssd');
    var hddSelect = document.getElementById('hdd');
    var osSelect = document.getElementById('os');

    // Zeige das Bild nur, wenn alle Optionen ausgewählt sind
    if (cpu && mainboard && gpu && ram && ssd && hdd && os) {
        bildElement.style.display = 'block'; // Bild anzeigen

        if (pic) {
            bildElement.src = 'css/pictures/pc' + pic + ".jpg"; // Bildquelle aktualisieren
        }

        cpuSelect.value = cpu;
        mainboardSelect.value = mainboard;
        gpuSelect.value = gpu;
        ramSelect.value = ram;
        ssdSelect.value = ssd;
        hddSelect.value = hdd;
        osSelect.value = os;
    } else {
        bildElement.style.display = 'none'; // Bild ausblenden
    }
};
