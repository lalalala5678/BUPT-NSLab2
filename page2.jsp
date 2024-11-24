<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>上海 | 魔都风采</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            color: #ffffff;
            background: linear-gradient(to bottom, #001f33, #003d66, #0073e6);
            background-size: 300% 300%;
            animation: bgGradient 12s infinite alternate ease-in-out;
            overflow-x: hidden;
        }

        @keyframes bgGradient {
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
            background: radial-gradient(circle, #004d99, #002f66);
            clip-path: polygon(0 0, 100% 0, 100% 85%, 0 100%);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5);
        }

        .header h1 {
            font-size: 64px;
            margin: 0;
            color: #e6e6ff;
            text-shadow: 4px 4px 12px rgba(0, 0, 0, 0.8);
            animation: neonEffect 1.5s infinite alternate ease-in-out;
        }

        @keyframes neonEffect {
            0% {
                text-shadow: 0 0 10px rgba(0, 102, 255, 0.8), 0 0 20px rgba(0, 102, 255, 0.5), 0 0 30px rgba(0, 102, 255, 0.4);
            }
            100% {
                text-shadow: 0 0 20px rgba(0, 153, 255, 0.9), 0 0 40px rgba(0, 153, 255, 0.6), 0 0 60px rgba(0, 153, 255, 0.5);
            }
        }

        .header p {
            font-size: 22px;
            color: #b3e0ff;
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
            background: rgba(0, 0, 0, 0.6);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5);
            text-align: justify;
            backdrop-filter: blur(10px);
        }

        .section h2 {
            font-size: 36px;
            color: #66ccff;
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
            margin-top: 20px;
        }

        .images img {
            width: calc(100% / 3 - 20px);
            max-width: 300px;
            height: auto;
            border-radius: 15px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 4px 10px rgba(255, 255, 255, 0.2);
        }

        .images img:hover {
            transform: scale(1.1);
            box-shadow: 0 8px 30px rgba(255, 255, 255, 0.5);
        }

        .footer {
            background: linear-gradient(to right, #001f33, #003d66);
            color: #ffffff;
            text-align: center;
            padding: 20px;
            font-size: 16px;
            border-top: 2px solid #004080;
        }

        .footer a {
            color: #66ccff;
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
        <h1>上海 | 魔都风采</h1>
        <p>东方明珠璀璨，国际风范领航</p>
    </div>

    <!-- Content -->
    <div class="content">
        <!-- 历史与文化 -->
        <div class="section">
            <h2>历史与文化</h2>
            <p>
                <%
                    String history = "上海，这座拥有深厚历史底蕴的城市，以其独特的海派文化著称。";
                    String landmarks = "外滩、豫园和南京路步行街等名胜古迹，展现了这座城市的悠久历史与多元文化。";
                    out.println(history + " " + landmarks);
                %>
            </p>
            <div class="images">
                <img src="images/the-bund.png" alt="外滩">
                <img src="images/yuyuan-garden.png" alt="豫园">
                <img src="images/nanjing-road.png" alt="南京路">
            </div>
        </div>

        <!-- 现代都市 -->
        <div class="section">
            <h2>现代都市</h2>
            <p>
                <%
                    String modern = "作为中国最具国际化的大都市之一，上海的现代化建筑群令人叹为观止。";
                    String icons = "东方明珠、上海中心大厦和金茂大厦等地标建筑，描绘了一幅壮丽的未来城市画卷。";
                    out.println(modern + " " + icons);
                %>
            </p>
            <div class="images">
                <img src="images/oriental-pearl.png" alt="东方明珠">
                <img src="images/shanghai-tower.png" alt="上海中心大厦">
                <img src="images/jinmao-tower.png" alt="金茂大厦">
            </div>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>© 2024 上海 | 魔都风采 | <a href="index.jsp">返回首页</a></p>
    </div>
</body>

</html>
