<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>云南 | 彩云之南</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            color: #ffffff;
            background: linear-gradient(to bottom, #002f3d, #005f73, #0f9b8e, #88c6c3);
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
            background: radial-gradient(circle, #007f5f, #003f2f);
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
                text-shadow: 0 0 10px rgba(0, 204, 153, 0.8), 0 0 20px rgba(0, 204, 153, 0.5), 0 0 30px rgba(0, 204, 153, 0.4);
            }
            100% {
                text-shadow: 0 0 20px rgba(102, 255, 204, 0.9), 0 0 40px rgba(102, 255, 204, 0.6), 0 0 60px rgba(102, 255, 204, 0.5);
            }
        }

        .header p {
            font-size: 22px;
            color: #b3ffd9;
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
            color: #66ffcc;
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
            background: linear-gradient(to right, #002f3d, #005f73);
            color: #ffffff;
            text-align: center;
            padding: 20px;
            font-size: 16px;
            border-top: 2px solid #004f63;
        }

        .footer a {
            color: #66ffcc;
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
        <h1>云南 | 彩云之南</h1>
        <p>绚丽多彩的风景，民族风情的宝库</p>
    </div>

    <!-- Content -->
    <div class="content">
        <!-- 自然风光 -->
        <div class="section">
            <h2>自然风光</h2>
            <p>
                <%
                    String nature = "云南被誉为“彩云之南”，拥有世界级的自然美景。";
                    String attractions = "洱海、玉龙雪山和香格里拉等自然奇观，让人流连忘返。";
                    out.println(nature + " " + attractions);
                %>
            </p>
            <div class="images">
                <img src="images/erhai.png" alt="洱海">
                <img src="images/yulong-snow-mountain.png" alt="玉龙雪山">
                <img src="images/shangri-la.png" alt="香格里拉">
            </div>
        </div>

        <!-- 民族风情 -->
        <div class="section">
            <h2>民族风情</h2>
            <p>
                <%
                    String culture = "云南是中国少数民族最多的省份，独特的民族文化充满魅力。";
                    String events = "大理三月街、傣族泼水节和彝族火把节等传统节日，展示了多元文化的精彩。";
                    out.println(culture + " " + events);
                %>
            </p>
            <div class="images">
                <img src="images/dali.png" alt="大理">
                <img src="images/splash-festival.png" alt="泼水节">
                <img src="images/torch-festival.png" alt="火把节">
            </div>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>© 2024 云南 | 彩云之南 | <a href="main.jsp">返回首页</a></p>
    </div>
</body>

</html>
