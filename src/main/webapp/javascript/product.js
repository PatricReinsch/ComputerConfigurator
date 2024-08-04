window.onload = function() {
	// Read parameters from the URL
	var params = new URLSearchParams(window.location.search);

	var pic = params.get('pic');
	var cpu = params.get('cpu');
	var mainboard = params.get('mainboard');
	var gpu = params.get('gpu');
	var ram = params.get('ram');
	var ssd = params.get('ssd');
	var hdd = params.get('hdd');
	var os = params.get('os');

	var bildElement = document.getElementById('pic');

	// Select the dropdown menu option according to the passed parameter
	var cpuSelect = document.getElementById('cpu');
	var mainboardSelect = document.getElementById('mainboard');
	var gpuSelect = document.getElementById('gpu');
	var ramSelect = document.getElementById('ram');
	var ssdSelect = document.getElementById('ssd');
	var hddSelect = document.getElementById('hdd');
	var osSelect = document.getElementById('os');

	// Display the image only if all options are selected
	if (cpu && mainboard && gpu && ram && ssd && hdd && os) {
		bildElement.style.display = 'block';

		if (pic) {
			bildElement.src = 'css/pictures/pc' + pic + ".jpg";
		}

		cpuSelect.value = cpu;
		mainboardSelect.value = mainboard;
		gpuSelect.value = gpu;
		ramSelect.value = ram;
		ssdSelect.value = ssd;
		hddSelect.value = hdd;
		osSelect.value = os;
	} else {
		bildElement.style.display = 'none';
	}
};
