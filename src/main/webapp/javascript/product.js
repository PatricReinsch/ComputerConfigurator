window.onload = function() {
    // Parameter aus der URL lesen
    var params = new URLSearchParams(window.location.search);

    var pic = params.get('pic'); // Parameter 'option' auslesen
    var cpu = params.get('cpu'); // Parameter 'option' auslesen
    var mainboard = params.get('mainboard'); // Parameter 'option' auslesen
    var gpu = params.get('gpu'); // Parameter 'option' auslesen
    var ram = params.get('ram'); // Parameter 'option' auslesen
    var ssd = params.get('ssd'); // Parameter 'option' auslesen
    var hdd = params.get('hdd'); // Parameter 'option' auslesen
    var os = params.get('os'); // Parameter 'option' auslesen

    console.log(pic);
    console.log(cpu);
    console.log(mainboard);
    console.log(gpu);
    console.log(ram);
    console.log(ssd);
    console.log(hdd);
    console.log(os);

    var bildElement = document.getElementById('pic');

    // Dropdown-Menü entsprechend der übergebenen Option auswählen
    var cpuSelect = document.getElementById('cpu');
    var mainboardSelect = document.getElementById('mainboard');
    var gpuSelect = document.getElementById('gpu');
    var ramSelect = document.getElementById('ram');
    var ssdSelect = document.getElementById('ssd');
    var hddSelect = document.getElementById('hdd');
    var osSelect = document.getElementById('os');

    if (cpu) {
        cpuSelect.value = cpu;
    }
    if (pic) {
        console.log(bildElement.src = 'css/pictures/pc' + pic + ".jpeg");
        bildElement.src = 'css/pictures/pc' + pic + ".jpg";
    }
    if (mainboard) {
        mainboardSelect.value = mainboard;
    }
    if (gpu) {
        gpuSelect.value = gpu;
    }
    if (ram) {
        ramSelect.value = ram;
    }
    if (hdd) {
        hddSelect.value = hdd;
    }
    if (ssd) {
        ssdSelect.value = ssd
    }
    if (os) {
        osSelect.value = os;
    }
};