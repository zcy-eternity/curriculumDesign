package com.controller;

import com.entity.News;
import com.service.NewsService;
import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/getNews")
public class GetNewsServlet extends HttpServlet {
    private NewsService newsService = ServiceFactory.getNewsService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        News newsDetail = newsService.getNews(Integer.parseInt(req.getParameter("nid")));
        req.setAttribute("newsDetail",newsDetail);
        req.getRequestDispatcher("/WEB-INF/jsp/getNews.jsp").forward(req,resp);
    }
}
