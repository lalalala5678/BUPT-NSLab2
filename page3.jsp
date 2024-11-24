<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>四川 | 天府之国</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            color: #ffffff;
            background: linear-gradient(to bottom, #282c34, #4b5366, #6c798f, #8fa8bf);
            background-size: 400% 400%;
            animation: bgAnimation 15s infinite alternate ease-in-out;
            overflow-x: hidden;
        }

        @keyframes bgAnimation {
            0% {
                background-position: 0% 50%;
            }
            50% {
                background-position: 100% 50%;
            }
            100% {
                background-position: 0% 50%;
            }
        }

        .header {
            text-align: center;
            padding: 60px 20px;
            background: radial-gradient(circle, #003f5c, #001f3d);
            clip-path: polygon(0 0, 100% 0, 100% 85%, 0 100%);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5);
        }

        .header h1 {
            font-size: 64px;
            margin: 0;
            color: #e0ffe6;
            text-shadow: 4px 4px 12px rgba(0, 0, 0, 0.8);
            animation: neonEffect 1.5s infinite alternate ease-in-out;
        }

        @keyframes neonEffect {
            0% {
                text-shadow: 0 0 10px rgba(204, 51, 0, 0.8), 0 0 20px rgba(204, 51, 0, 0.5), 0 0 30px rgba(204, 51, 0, 0.4);
            }
            100% {
                text-shadow: 0 0 20px rgba(255, 102, 51, 0.9), 0 0 40px rgba(255, 102, 51, 0.6), 0 0 60px rgba(255, 102, 51, 0.5);
            }
        }

        .header p {
            font-size: 22px;
            color: #ffd9b3;
            margin-top: 15px;
            font-style: italic;
        }

        .content {
            padding: 40px 20px;
        }

        .section {
            margin-bottom: 40px;
            padding: 30px;
            border-radius: 15px;
            background: rgba(255, 255, 255, 0.1);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5);
            text-align: justify;
            backdrop-filter: blur(10px);
        }

        .section h2 {
            font-size: 36px;
            color: #ff6633;
            text-align: center;
            margin-bottom: 20px;
        }

        .section p {
            font-size: 18px;
            line-height: 1.8;
            color: #e6f7ff;
        }

        .images {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 15px;
            margin-top: 30px;
        }

        .images img {
            width: calc(100% / 3 - 10px);
            max-width: 350px;
            height: auto;
            border-radius: 15px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 6px 15px rgba(255, 255, 255, 0.2);
        }

        .images img:hover {
            transform: scale(1.1);
            box-shadow: 0 12px 40px rgba(255, 255, 255, 0.5);
        }

        .footer {
            background: linear-gradient(to right, #003f5c, #001f3d);
            color: #ffffff;
            text-align: center;
            padding: 20px;
            font-size: 16px;
            border-top: 2px solid #004f63;
        }

        .footer a {
            color: #ff6633;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
    <!-- Header -->
    <div class="header">
        <h1>四川 | 天府之国</h1>
        <p>熊猫故乡，川菜之源，文化与自然的交汇</p>
    </div>

    <!-- Content -->
    <div class="content">
        <!-- 自然风光 -->
        <div class="section">
            <h2>自然风光</h2>
            <p>
                <%
                    String nature = "四川，这片神奇的土地以其壮丽的自然景观闻名于世。";
                    String attractions = "九寨沟、峨眉山和都江堰等地，展现了人与自然和谐共生的画卷。";
                    out.println(nature + " " + attractions);
                %>
            </p>
            <div class="images">
                <img src="images/jiuzhaigou.png" alt="九寨沟">
                <img src="images/emei-mountain.png" alt="峨眉山">
                <img src="images/dujiangyan.png" alt="都江堰">
            </div>
        </div>

        <!-- 美食与文化 -->
        <div class="section">
            <h2>美食与文化</h2>
            <p>
                <%
                    String food = "四川是川菜的发源地，以麻辣鲜香著称，火锅更是让人垂涎欲滴。";
                    String culture = "此外，蜀锦、蜀绣等非物质文化遗产，展现了四川丰富的文化底蕴。";
                    out.println(food + " " + culture);
                %>
            </p>
            <div class="images">
                <img src="images/sichuan-hotpot.png" alt="四川火锅">
                <img src="images/shujin.png" alt="蜀锦">
                <img src="images/panda.png" alt="熊猫">
            </div>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>© 2024 四川 | 天府之国 | <a href="main.jsp">返回首页</a></p>
    </div>
</body>

</html>
