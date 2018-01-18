<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style>
        li {list-style-type:none;}
        html, body {
            height: 100%;
            font-size: 14px;
            color: #525252;
            font-family: NotoSansHans-Regular,AvenirNext-Regular,arial,Hiragino Sans GB,"Microsoft Yahei","Hiragino Sans GB","WenQuanYi Micro Hei",sans-serif;
            background: #f0f2f5;
        }
        .footer {
            background-color: #fff;
            margin-top: 22px;
            margin-bottom: 22px;
            width: 100%;
            padding-top: 22px;
            color: #8A8A8A;
            display: block;
            height: 200px;
            border: 1px ;
            clear:both
        }

        .container {
            margin-right: 5%;
            margin-left: 5%;
            padding-left: 15px;
            padding-right: 15px;
            width: 40%;
            float: left;
        }
        .info {
            margin-right: 5%;
            width: 10%;
            float: left;
        }
a{
    color: #8A8A8A;
    cursor: pointer;
}
    </style>
</head>
<body>
<footer class="footer">
    <div class="container">
        我们是高品质的开发者社区，致力于为开发者提供一个分享创造、结识伙伴、协同互助的平台。
        <br/><br/><br/>
        <p>Designed by <span class="glyphicon glyphicon-heart"></span> value</p>
    </div>
    <div class="info">
        <p style="text-align: center;font-size: 16px;">统计信息</p>
        <ul >
            <li>当前在线: 819</li>
            <li>会员数: 19730</li>
            <li>话题数: 5819</li>
        </ul>
    </div>
    <div class="info">
        <p style="text-align: center;font-size: 16px;">友情链接</p>
        <ul >
            <li><a>Github</a></li>
            <li><a>Segmentfault</a></li>
            <li><a>V2ex</a></li>
        </ul>
    </div>
    <div class="info" >
        <p style="text-align: center;font-size: 16px;">其他信息</p>
        <ul >
            <li><a>推荐网站</a></li>
            <li><a>关于我们</a></li>
        </ul>
    </div>
</footer>
</body>
</html>