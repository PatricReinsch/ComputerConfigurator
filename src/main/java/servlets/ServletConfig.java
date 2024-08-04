package servlets;

import beans.BeansConfig;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class ServletConfig extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BeansConfig config = new BeansConfig();
        
        config.setCpu(request.getParameter("cpu"));
        config.setMainboard(request.getParameter("mainboard"));
        config.setGpu(request.getParameter("gpu"));
        config.setRam(request.getParameter("ram"));
        config.setSsd(request.getParameter("ssd"));
        config.setHdd(request.getParameter("hdd"));
        config.setOs(request.getParameter("os"));

        request.setAttribute("config", config);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/checkout.jsp");
        dispatcher.forward(request, response);
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve parameters from the request
        String cpu = request.getParameter("cpu");
        String mainboard = request.getParameter("mainboard");
        String gpu = request.getParameter("gpu");
        String ram = request.getParameter("ram");
        String ssd = request.getParameter("ssd");
        String hdd = request.getParameter("hdd");
        String os = request.getParameter("os");

        // Create and populate the BeansConfig object
        BeansConfig config = new BeansConfig();
        config.setCpu(cpu);
        config.setMainboard(mainboard);
        config.setGpu(gpu);
        config.setRam(ram);
        config.setSsd(ssd);
        config.setHdd(hdd);
        config.setOs(os);

        // Set the BeansConfig object as a request attribute
        request.setAttribute("config", config);

        // Forward the request to checkout.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("/checkout.jsp");
        dispatcher.forward(request, response);
    }
}