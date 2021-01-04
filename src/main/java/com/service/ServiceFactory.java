package com.service;

import com.service.impl.NewsServiceImpl;
import com.service.impl.UserServiceImpl;

public class ServiceFactory {
    private static final UserService userService = create1();
    private static final NewsService newsService = create2();

    private static UserService create1() {
        return new UserServiceImpl();
    }
    private static NewsService create2() {
        return new NewsServiceImpl();
    }
    public static UserService getUserService() {
        return userService;
    }
    public static NewsService getNewsService() { return newsService; }
}
