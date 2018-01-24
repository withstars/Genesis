<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>${topic.title} - Genesis </title>
</head>
<body>
<!-- 引入header文件 -->
<%@ include file="header.jsp"%>
<div style="width: 70%;margin:1% 2% 1% 5%;float: left;">
<div class="panel panel-default" id="main" style="">
    <div class="panel-heading" style="background-color: white">
        <div class="panel-heading" style="background-color: white">
            <a href="/">Genesis</a> › 新主题
        </div>
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

<c:if test="${!empty replies}">
<div class="panel panel-default" id="main" style="">
    <div class="panel-heading" style="background-color: white">
        <span>${repliesNum} 回复  |  直到 2018-01-19 11:20:23 +08:00</span>
    </div>

    <ul class="list-group" style="width: 100%">
        <!-- 遍历评论 -->
        <c:forEach items="${replies}" var="reply">
        <li class="list-group-item">
            <div style="height: 50px">
                <div style="float: left;width: 6%;margin-bottom: 5px">
                    <img width="50px" height="50px" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1516705523&di=8ce297fa0fff1917be616a0995f6748a&imgtype=jpg&er=1&src=http%3A%2F%2Fb.hiphotos.baidu.com%2Fbaike%2Fpic%2Fitem%2F2cf5e0fe9925bc313db40d1c5edf8db1ca13704c.jpg" class="img-rounded">
                </div>
                <div style="width: 89%;float: left">
                    <a href="/t?id="><strong>${reply.replyUserId}</strong></a>●
                    <small class="text-muted">${reply.createTime}</small>
                    <br/>
                    <div>
                        <p>${reply.content}</p>
                    </div>
                </div>
            </div>
        </li>
        </c:forEach>

    </ul>
</div>
</c:if>

<c:if test="${!empty user}">

<div class="panel panel-default" id="main" style="">
    <div class="panel-heading" style="background-color: white">
        添加一条新回复
    </div>
    <div class="panel-body">
        <div class="form-group">
            <form action="/reply/add" method="post">
                <input type="hidden" name="topicId" value="${topic.id}">
                <input type="hidden" name="replyUserId" value="${user.id}">
                <textarea class="form-control" rows="3" name="content" required="required"></textarea><br/>
            <input type="submit" class="btn btn-default btn-sm">
            </form>
        </div>

    </div>
</div>
</c:if>

</div>
<!-- 引入侧边栏文件 -->
<%@ include file="side.jsp"%>

<!-- 引入footer文件 -->
<%@ include file="footer.jsp"%>

</body>
</html>