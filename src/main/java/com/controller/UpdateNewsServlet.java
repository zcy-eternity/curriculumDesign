package com.controller;

import com.service.NewsService;
import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/updateNews")
public class UpdateNewsServlet extends HttpServlet {
    private NewsService newsService = ServiceFactory.getNewsService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        newsService.updateNews(Integer.parseInt(req.getParameter("newsId")),req.getParameter("title"));
        resp.sendRedirect(req.getContextPath()+"/ManageNews");
    }
}
