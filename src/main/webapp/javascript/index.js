function navigateToProductPage(pic, cpu, mainboard, gpu, ram, ssd, hdd, os) {
    // Hier die URL der Produktseite (product.jsp) mit Parameter übergeben
    window.location.href = 'product.jsp?pic=' + pic + "&cpu=" + cpu + "&mainboard=" + mainboard + "&gpu=" + gpu + "&ram=" + ram + "&ssd=" + ssd + "&hdd=" + hdd + "&os=" + os;
}