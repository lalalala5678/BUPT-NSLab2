<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.Cookie" %> <!-- 导入 Cookie 类 -->
<%
    // 模拟的用户名和密码（在实际应用中应从数据库中验证）
    final String VALID_USERNAME = "traveler";
    final String VALID_PASSWORD = "securepass";

    // 获取用户输入的用户名和密码
    String userName = request.getParameter("userName");
    String password = request.getParameter("password");

    if (userName != null && password != null && !userName.isEmpty() && !password.isEmpty()) {
        // 验证用户名和密码
        if (VALID_USERNAME.equals(userName) && VALID_PASSWORD.equals(password)) {
            // 保存用户名和密码到 Session
            session.setAttribute("userName", userName);
            session.setAttribute("password", password);

            // 设置用户名和密码到 Cookie
            Cookie userCookie = new Cookie("userName", userName);
            Cookie passwordCookie = new Cookie("password", password);
            userCookie.setMaxAge(60 * 60 * 24 * 7); // Cookie 有效期为 7 天
            passwordCookie.setMaxAge(60 * 60 * 24 * 7);
            response.addCookie(userCookie);
            response.addCookie(passwordCookie);

            // 重定向到主页面 main.jsp
            response.sendRedirect("main.jsp");
        } else {
            // 验证失败，重定向回登录页面并附加错误信息
            response.sendRedirect("index.jsp?error=invalid");
        }
    } else {
        // 如果用户名或密码为空，重定向回登录页面并附加错误信息
        response.sendRedirect("index.jsp?error=empty");
    }
%>
