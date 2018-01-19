<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
<!-- 引入header文件 -->
<%@ include file="header.jsp"%>

<div class="panel panel-default" id="main" style="width: 70%;margin:2% 2% 5% 5%;float: left;">
    <div class="panel-heading" style="background-color: white">
        <a style="margin-right: 2%">活跃</a><a style="margin-right: 2%">精华</a><a style="margin-right: 2%">投票</a><a style="margin-right: 2%">最近</a>
    </div>

<ul class="list-group" style="width: 100%">
    <c:forEach items="${topics}" var="topic">
    <li class="list-group-item">
        <div style="height: 50px">
            <div style="float: left;width: 6%;margin-bottom: 5px">
                <img width="50px" height="50px" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1516705523&di=8ce297fa0fff1917be616a0995f6748a&imgtype=jpg&er=1&src=http%3A%2F%2Fb.hiphotos.baidu.com%2Fbaike%2Fpic%2Fitem%2F2cf5e0fe9925bc313db40d1c5edf8db1ca13704c.jpg" class="img-rounded">
            </div>
            <div style="width: 89%;float: left">
                <a href="/t?id=${topic.id}">${topic.title}</a><br/>
                <div>
                    <a><span class="label label-default" >技术</span></a>●
                    <a><span ><strong>${topic.userId}</strong></span></a>●
                    <small class="text-muted">${topic.localCreateTime}</small>●
                    <small class="text-muted">最后回复来自:</small><a><span><strong>value</strong></span></a>
                </div>
            </div>
            <div style="width: 5%;float: right;text-align: center">
                <span class="badge">15</span>
            </div>
        </div>
    </li>
    </c:forEach>

</ul>

</div>
<c:if test="${empty uid}">
<!-- 未登录 -->
<div class="panel panel-default" id="sidebar2" style="width: 20%;margin:2% 2% 2% 0%;float: right">
    <div class="panel-heading" style="background-color: white;text-align: center">
        <blockquote>
            Genesis
            <small>一个分享创造的开发者社区</small>
        </blockquote>
    </div>
    <ul class="list-group" style="width: 100%">
        <li class="list-group-item"><a href="">创作新主题</a></li>
        <li class="list-group-item"><a href="">0条未读提醒</a></li>
        <li class="list-group-item"><a href="">积分:30</a></li>
    </ul>
</div>
</c:if>

<c:if test="${!empty uid}">
<!-- 已登录 -->
<div class="panel panel-default" id="sidebar2" style="width: 20%;margin:2% 2% 2% 0%;float: right">
    <div class="panel-heading" style="background-color: white;text-align: center">
        ${username}
    </div>
    <ul class="list-group" style="width: 100%">
        <li class="list-group-item"><a href="">创作新主题</a></li>
        <li class="list-group-item"><a href="">0条未读提醒</a></li>
        <li class="list-group-item"><a href="">积分:30</a></li>
    </ul>
</div>
</c:if>
<div class="panel panel-default" id="sidebar1" style="width: 20%;margin:2% 2% 1% 0%;float: right">
    <div class="panel-heading" style="background-color: white;text-align: center">
       热门跟帖
    </div>
    <ul class="list-group" style="width: 100%">
        <li class="list-group-item"><a>免费域名注册</a></li>
        <li class="list-group-item"><a>免费 Window 空间托管</a></li>
        <li class="list-group-item"><a>图像的数量</a></li>
        <li class="list-group-item"><a>24*7 支持</a></li>
        <li class="list-group-item"><a>每年更新成本</a></li>
    </ul>
</div>

<!-- 引入footer文件 -->
<%@ include file="footer.jsp"%>
</body>
</html>