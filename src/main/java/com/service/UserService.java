package com.service;

import com.entity.User;

public interface UserService {
    public User getUser(String name,String password);
}