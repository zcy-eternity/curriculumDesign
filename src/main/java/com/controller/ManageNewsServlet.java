package com.controller;

import com.entity.News;
import com.entity.User;
import com.service.NewsService;
import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/ManageNews")
public class ManageNewsServlet extends HttpServlet {
    private NewsService newsService = ServiceFactory.getNewsService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");
        if(user!=null){
            req.setAttribute("news",newsService.listNews());
            req.getRequestDispatcher(req.getContextPath()+"/WEB-INF/jsp/ManageNews.jsp").forward(req,resp);
        }else
            resp.sendRedirect(req.getContextPath()+"/login");
    }

}
