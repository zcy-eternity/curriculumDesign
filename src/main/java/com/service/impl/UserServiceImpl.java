package com.service.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Logger;

import com.entity.User;
import com.service.UserService;
import com.util.DataSourceUtils;

public class UserServiceImpl implements UserService {
    private static Logger logger = Logger.getLogger(UserServiceImpl.class.getName());
    @Override
    public User getUser(String name,String password) {
        User user = null;
        String sql = "SELECT * FROM user WHERE name=? AND password=?";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, name);
            st.setString(2,password);
            try(ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    user = new User(rs.getString("name"),rs.getString("password"));
                }
            }
        } catch (SQLException e) {
            logger.warning(e.getMessage());
        }
        return user;
    }
}
