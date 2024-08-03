package servlets;

import beans.BeansConfig;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class ServletConfig extends HttpServlet {
    
    // Example price mapping
    private static final Map<String, Integer> prices = new HashMap<>();
    
    static {
        prices.put("r5950x", 799);
        prices.put("r5900x", 549);
        prices.put("r5900", 499);
        prices.put("r5800x3d", 699);
        prices.put("r5800x", 599);
        prices.put("r5800", 449);
        prices.put("r5700x3d", 649);
        prices.put("r5700x", 549);
        prices.put("r5600x", 349);
        prices.put("r5600", 299);

        prices.put("msib550", 129);
        prices.put("asusb550", 139);
        prices.put("msix570", 199);
        prices.put("asusx570", 209);

        prices.put("rtx4090", 1599);
        prices.put("rtx4080ti", 1199);
        prices.put("rtx4080", 1399);
        prices.put("rtx4070", 699);
        prices.put("rtx4060ti", 499);
        prices.put("rx6800xt", 749);
        prices.put("rx6700xt", 479);
        prices.put("rx6900xt", 999);
        prices.put("rx6600xt", 379);
        prices.put("rx6800", 649);

        prices.put("16gb", 79);
        prices.put("32gb", 149);
        prices.put("64gb", 289);

        prices.put("512gb", 59);
        prices.put("1tb", 99);
        prices.put("2tb", 179);
        prices.put("4tb", 359);

        prices.put("1tb", 49); // Assuming "1tb" here refers to HDD
        prices.put("2tb", 69); // Assuming "2tb" here refers to HDD
        prices.put("4tb", 119); // Assuming "4tb" here refers to HDD

        prices.put("win10", 139);
        prices.put("win11", 149);
        prices.put("x", 0); // No price for "None"
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BeansConfig config = new BeansConfig();
        config.setCpu(request.getParameter("cpu"));
        config.setMainboard(request.getParameter("mainboard"));
        config.setGpu(request.getParameter("gpu"));
        config.setRam(request.getParameter("ram"));
        config.setSsd(request.getParameter("ssd"));
        config.setHdd(request.getParameter("hdd"));
        config.setOs(request.getParameter("os"));

        // Calculate total price
        int totalPrice = 0;
        totalPrice += prices.getOrDefault(config.getCpu(), 0);
        totalPrice += prices.getOrDefault(config.getMainboard(), 0);
        totalPrice += prices.getOrDefault(config.getGpu(), 0);
        totalPrice += prices.getOrDefault(config.getRam(), 0);
        totalPrice += prices.getOrDefault(config.getSsd(), 0);
        totalPrice += prices.getOrDefault(config.getHdd(), 0);
        totalPrice += prices.getOrDefault(config.getOs(), 0);
        
        request.setAttribute("config", config);
        request.setAttribute("price", totalPrice);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/checkout.jsp");
        dispatcher.forward(request, response);
    }
}