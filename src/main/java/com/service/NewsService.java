package com.service;

import com.entity.News;

import java.util.Date;
import java.util.List;

public interface NewsService {
    public List<News> listNews();
    public News getNews(int id);
    public void addNews(String title, Date date);
    public void deleteNews(int id);
    public void updateNews(int id,String newTitle);

}
