<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <script src="/js/jquery-3.2.1.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <title>Genesis ›头像上传</title>
</head>
<body>
<!-- 引入header文件 -->
<%@ include file="header.jsp"%>

<div style="width: 70%;margin:1% 2% 1% 5%;float: left;">
    <div class="panel panel-default" id="main" style="">
        <div class="panel-heading" style="background-color: white">
            <a href="/">Genesis</a> › 设置 ›头像上传
        </div>

        <div class="panel-body">

            <form  action="/settings/avatar/update" enctype="multipart/form-data" method="post" class="form-horizontal" role="form">
                <div style="margin-left: 17%">
                    <img width="60px" height="60px" src="${user.avatar}" class="img-rounded">
                    <input type="file"  name="avatar" accept="image/png,image/jpeg,image/jpg" >
                    <br/>
                    <input class="btn btn-default" type="submit" value="上传头像">
                </div>
            </form>

        </div>

    </div>



</div>

<!-- 引入侧边栏文件 -->
<%@ include file="side.jsp"%>

<!-- 引入footer文件 -->
<%@ include file="footer.jsp"%>

</body>
</html>