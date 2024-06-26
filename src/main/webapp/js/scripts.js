document.addEventListener('DOMContentLoaded', function() {
    const form = document.getElementById('configForm');
    form.addEventListener('submit', function(event) {
        const cpu = document.getElementById('cpu').value;
        const gpu = document.getElementById('gpu').value;
        const ram = document.getElementById('ram').value;
		const rom = document.getElementById('rom').value;
		const os = document.getElementById('os').value;

        if (!cpu || !gpu || !ram || !rom || !os) {
            event.preventDefault();
            alert('Bitte alle Komponenten Eingeben!');
        }
    });
});
