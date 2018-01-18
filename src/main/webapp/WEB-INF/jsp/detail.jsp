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

<div class="panel panel-default" id="main" style="width: 70%;margin:2% 2% 5% 5%;float: left;">
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




<!-- 引入footer文件 -->
<%@ include file="footer.jsp"%>
</body>
</html>