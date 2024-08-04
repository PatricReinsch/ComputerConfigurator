function navigateToProductPage(pic, cpu, mainboard, gpu, ram, ssd, hdd, os) {
    // Pass the URL of the product page (product.jsp) with parameters
    window.location.href = 'product.jsp?pic=' + pic + "&cpu=" + cpu + "&mainboard=" + mainboard + "&gpu=" + gpu + "&ram=" + ram + "&ssd=" + ssd + "&hdd=" + hdd + "&os=" + os;
}