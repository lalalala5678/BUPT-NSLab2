<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.Cookie" %>
<%
    // 检查 Session 中是否已经存储用户名和密码
    String userName = (String) session.getAttribute("userName");
    String password = (String) session.getAttribute("password");

    // 检查是否存在有效的 Cookie
    Cookie[] cookies = request.getCookies();
    String cookieUserName = null;
    String cookiePassword = null;

    if (cookies != null) {
        for (Cookie cookie : cookies) {
            if ("userName".equals(cookie.getName())) {
                cookieUserName = cookie.getValue();
            } else if ("password".equals(cookie.getName())) {
                cookiePassword = cookie.getValue();
            }
        }
    }

    // 如果 Session 或 Cookie 存储了用户名和密码，跳转到 main.jsp
    if ((userName != null && password != null) || (cookieUserName != null && cookiePassword != null)) {
        response.sendRedirect("main.jsp");
        return; // 防止后续代码执行
    }
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>登录您的旅行者身份</title>
    <style>
        body {
            font-family: "Roboto", sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            background: linear-gradient(120deg, #1a2a6c, #b21f1f, #fdbb2d);
            background-size: 300% 300%;
            animation: gradientMove 10s ease infinite;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #ffffff;
            overflow: hidden;
        }

        @keyframes gradientMove {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .form-container {
            background: rgba(0, 0, 0, 0.7);
            padding: 40px 60px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.5);
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .form-container h1 {
            margin-bottom: 20px;
            font-size: 2.5rem;
            letter-spacing: 2px;
            background: linear-gradient(90deg, #00dbde, #fc00ff);
            -webkit-background-clip: text;
            color: transparent;
        }

        .input {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            color: #333;
            background: linear-gradient(90deg, #ffffff, #e0e0e0);
            box-shadow: inset 0 2px 5px rgba(0, 0, 0, 0.2);
            outline: none;
        }

        .input:focus {
            background: linear-gradient(90deg, #e0e0e0, #ffffff);
            box-shadow: 0 0 8px rgba(255, 255, 255, 0.8);
        }

        .button {
            background: linear-gradient(90deg, #ff6e7f, #bfe9ff);
            color: white;
            padding: 12px 25px;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            font-size: 1rem;
            transition: all 0.3s ease;
        }

        .button:hover {
            background: linear-gradient(90deg, #ff3c5e, #98dffd);
            transform: scale(1.1);
            box-shadow: 0 8px 20px rgba(255, 255, 255, 0.3);
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>登录您的旅行者身份</h1>
        <p>请输入您的旅行者代号和密码，解锁中国旅游的美丽城市。</p>
        <form action="processLogin.jsp" method="post">
            <input type="text" name="userName" class="input" placeholder="请输入您的旅行代号" required>
            <input type="password" name="password" class="input" placeholder="请输入您的密码" required>
            <button type="submit" class="button">开始旅程</button>
        </form>
    </div>
</body>
</html>
