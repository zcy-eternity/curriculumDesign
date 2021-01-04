package com.service.impl;

import com.entity.News;
import com.service.NewsService;
import com.util.DataSourceUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Logger;

public class NewsServiceImpl implements NewsService {
    private static Logger logger = Logger.getLogger(NewsServiceImpl.class.getName());
    @Override
    public List<News> listNews() {
        List<News> news = new ArrayList<>();
        String sql = "SELECT * FROM news";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery()) {
            while (rs.next()) {
                News news1 = new News(rs.getInt("id"), rs.getString("title"), rs.getDate("date"));
                news.add(news1);
            }
        } catch (SQLException e) {
            logger.warning(e.getMessage());
        }
        return news;
    }

    @Override
    public News getNews(int id) {
        News news = null;
        String sql = "SELECT * FROM news WHERE id=?";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setInt(1, id);
            try(ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    news = new News(rs.getInt("id"), rs.getString("title"), rs.getDate("date"), rs.getString("content"));
                }
            }
        } catch (SQLException e) {
            logger.warning(e.getMessage());
        }
        return news;
    }

    @Override
    public void addNews(String title, Date date) {
        String sql = "INSERT INTO news(title,date) VALUES(?,?)";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, title);
            st.setDate(2,new java.sql.Date(date.getTime()));
            st.executeUpdate();
        }catch (SQLException e) {
            logger.warning(e.getMessage());
        }
    }

    @Override
    public void deleteNews(int id) {
        String sql = "DELETE FROM news WHERE id=?";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setInt(1, id);
            st.executeUpdate();
        }catch (SQLException e){
            logger.warning(e.getMessage());
        }

    }

    @Override
    public void updateNews(int id,String newTitle) {
        String sql = "UPDATE news SET title=? WHERE id=?";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1,newTitle);
            st.setInt(2, id);
            st.executeUpdate();
        }catch (SQLException e){
            logger.warning(e.getMessage());
        }
    }
}
