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
}