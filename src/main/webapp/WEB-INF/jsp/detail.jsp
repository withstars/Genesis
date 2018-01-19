<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<!-- 引入header文件 -->
<%@ include file="header.jsp"%>

<div class="panel panel-default" id="main" style="width: 70%;margin:2% 2% 1% 5%;float: left;">
    <div class="panel-heading" style="background-color: white">
        <h3>${topic.title}</h3><br/>
        <div>
            <a><span ><strong>${topic.userId}</strong></span></a>●
            <small class="text-muted">${topic.localCreateTime}</small>●
            <small class="text-muted">${topic.click}次点击</small>
        </div>
    </div>

    <ul class="list-group" style="width: 100%">
            <li class="list-group-item">
                ${topic.content}
            </li>
    </ul>
</div>

<div class="panel panel-default" id="main" style="width: 70%;margin:1% 2% 1% 5%;float: left;">
    <div class="panel-heading" style="background-color: white">
        <span>22 回复  |  直到 2018-01-19 11:20:23 +08:00</span>
    </div>

    <ul class="list-group" style="width: 100%">

        <li class="list-group-item">
            <div style="height: 50px">
                <div style="float: left;width: 6%;margin-bottom: 5px">
                    <img width="50px" height="50px" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1516705523&di=8ce297fa0fff1917be616a0995f6748a&imgtype=jpg&er=1&src=http%3A%2F%2Fb.hiphotos.baidu.com%2Fbaike%2Fpic%2Fitem%2F2cf5e0fe9925bc313db40d1c5edf8db1ca13704c.jpg" class="img-rounded">
                </div>
                <div style="width: 89%;float: left">
                    <a href="/t?id="><strong>评论者</strong></a>●
                    <small class="text-muted">2018-01-19 11:20:23 +08:00</small>
                    <br/>
                    <div>
                        <p>评论内容</p>
                    </div>
                </div>
            </div>
        </li>

    </ul>
</div>

<c:if test="${!empty uid}">

<div class="panel panel-default" id="main" style="width: 70%;margin:1% 2% 1% 5%;float: left;">
    <div class="panel-heading" style="background-color: white">
        添加一条新回复
    </div>
    <div class="panel-body">
        <div class="form-group">
            <textarea class="form-control" rows="3"></textarea><br/>
            <button type="button" class="btn btn-default btn-sm">回复</button>
        </div>

    </div>
</div>
</c:if>

<!-- 引入footer文件 -->
<%@ include file="footer.jsp"%>

</body>
</html>