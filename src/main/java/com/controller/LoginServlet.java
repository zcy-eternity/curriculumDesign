package com.controller;

import com.entity.User;
import com.mysql.cj.util.DnsSrv;
import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static Logger LOGGER = Logger.getLogger(LoginServlet.class.getName());
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");
        if(user!=null){
            resp.sendRedirect(req.getContextPath()+"/ManageNews");
        }else{
            req.getRequestDispatcher("/WEB-INF/html/login.html").forward(req,resp);
        }

    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String Username = req.getParameter("Username");
        String Password = req.getParameter("Password");
        User user = ServiceFactory.getUserService().getUser(Username,Password);
        if(user!=null) {
            req.getSession().setAttribute("user",user);
            resp.sendRedirect("/ManageNews");
        }
        else
            resp.sendRedirect(req.getContextPath()+"/login");
   }
}
