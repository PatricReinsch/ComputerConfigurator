package servlets;

import beans.BeansConfig;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class ServletsConfig extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BeansConfig config = new BeansConfig();
        config.setCpu(request.getParameter("cpu"));
        config.setGpu(request.getParameter("gpu"));
        config.setRam(request.getParameter("ram"));
        config.setRom(request.getParameter("rom"));
        config.setOs(request.getParameter("os"));

        request.setAttribute("config", config);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/config.jsp");
        dispatcher.forward(request, response);
    }