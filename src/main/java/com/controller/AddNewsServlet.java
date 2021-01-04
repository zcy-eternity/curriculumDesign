package com.controller;

import com.service.NewsService;
import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
@WebServlet("/addNews")
public class AddNewsServlet extends HttpServlet {
    private NewsService newsService = ServiceFactory.getNewsService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String title = req.getParameter("title");
        SimpleDateFormat sdf =   new SimpleDateFormat( "yyyy-MM-dd" );
        try {
            Date date = sdf.parse(req.getParameter("date"));
            newsService.addNews(title,date);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        resp.sendRedirect(req.getContextPath()+"/ManageNews");
    }
}
