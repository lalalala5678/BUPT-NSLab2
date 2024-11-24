<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>北京 | 魅力之都</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            color: #ffffff;
            background: radial-gradient(circle at center, #001f3f, #000a14 70%);
            overflow-x: hidden;
        }

        /* 动态星空背景 */
        @keyframes stars {
            from {
                background-position: 0 0;
            }
            to {
                background-position: -10000px 10000px;
            }
        }

        .background {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
            background: url('images/stars.png') repeat;
            animation: stars 100s linear infinite;
            opacity: 0.8;
        }

        .header {
            position: relative;
            text-align: center;
            padding: 50px 20px;
            background: linear-gradient(to right, #ff7f50, #ff4500, #ff7f50);
            background-size: 200% 200%;
            animation: titleGradient 5s ease infinite;
            clip-path: polygon(0 0, 100% 0, 100% 80%, 0 100%);
        }

        @keyframes titleGradient {
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

        .header h1 {
            font-size: 60px;
            margin: 0;
            color: #ffe6e6;
            text-shadow: 4px 4px 10px rgba(0, 0, 0, 0.6);
        }

        .header p {
            font-size: 24px;
            color: #fffacd;
            margin-top: 10px;
            font-style: italic;
        }

        .content {
            padding: 40px 20px;
        }

        .section {
            margin-bottom: 40px;
            background: rgba(255, 255, 255, 0.1);
            border: 2px solid rgba(255, 255, 255, 0.3);
            border-radius: 20px;
            padding: 30px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5);
            text-align: justify;
            backdrop-filter: blur(8px);
        }

        .section h2 {
            font-size: 36px;
            color: #ffd700;
            text-shadow: 3px 3px 8px rgba(255, 215, 0, 0.6);
            margin-bottom: 20px;
            text-align: center;
        }

        .section p {
            font-size: 18px;
            line-height: 1.8;
            color: #e6f7ff;
        }

        .images {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
            gap: 15px;
        }
        .images img {
            width: calc(100% / 3 - 10px);
            max-width: 350px; /* 限制图片最大宽度 */
            border-radius: 15px;
            box-shadow: 0 6px 15px rgba(255, 255, 255, 0.3);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .images img:hover {
            transform: scale(1.1); /* 放大效果更明显 */
            box-shadow: 0 12px 40px rgba(255, 255, 255, 0.6); /* 增强阴影效果 */
        }


        .footer {
            padding: 20px;
            text-align: center;
            background: linear-gradient(to right, #000a14, #001f3f);
            color: #ffffff;
            font-size: 16px;
            border-top: 2px solid #004080;
        }

        .footer a {
            color: #ff9999;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
    <!-- 星空背景 -->
    <div class="background"></div>

    <!-- 页头 -->
    <div class="header">
        <h1>北京 | 魅力之都</h1>
        <p>历史与现代交织，传统与未来辉映</p>
    </div>

    <!-- 主内容 -->
    <div class="content">
        <!-- 历史文化 -->
        <div class="section">
            <h2>历史文化</h2>
            <p>
                <%
                    String heritage = "北京作为中国的首都，是中华文化的发源地之一，拥有三千多年的历史和八百多年的建都史。";
                    String landmarks = "故宫、天坛、长城和颐和园等世界文化遗产是北京历史的见证。这座城市的每一块砖瓦都流淌着深厚的文化底蕴。";
                    out.println(heritage + " " + landmarks);
                %>
            </p>
            <div class="images">
                <img src="images/forbidden-city.png" alt="故宫">
                <img src="images/great-wall.png" alt="长城">
                <img src="images/temple-of-heaven.png" alt="天坛">
            </div>
        </div>

        <!-- 现代风貌 -->
        <div class="section">
            <h2>现代风貌</h2>
            <p>
                <%
                    String modernView = "作为一线城市，北京是中国政治、经济、文化和科技中心。";
                    String architecture = "国家大剧院、央视大楼和北京大兴国际机场等现代化建筑群展示了北京的创新与活力。";
                    out.println(modernView + " " + architecture);
                %>
            </p>
            <div class="images">
                <img src="images/bird-nest.png" alt="鸟巢">
                <img src="images/cctv-building.png" alt="央视大楼">
                <img src="images/daxing-airport.png" alt="大兴机场">
            </div>
        </div>
    </div>

    <!-- 页脚 -->
    <div class="footer">
        <p>© 2024 北京 | 魅力之都 | <a href="main.jsp">返回首页</a></p
