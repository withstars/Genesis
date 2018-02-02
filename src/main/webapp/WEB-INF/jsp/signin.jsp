<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录 - Genesis</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <script src="/js/jquery-3.2.1.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/js.cookie.js"></script>

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

<div class="panel panel-default" id="login" style="width: 20%;margin-left: 40%;margin-top: 5%;margin-bottom: 5%">
    <div class="panel-heading" style="background-color: #fff">
        <h3 class="panel-title">登录</h3>
    </div>
    <div class="panel-body">

        <div class="form-group">
            <label for="username">用户名</label>
            <input type="text" class="form-control" id="username" name="username" placeholder="请输入用户名" required="required">
        </div>
        <div class="form-group">
            <label for="password">密码</label>
            <input type="password" class="form-control" id="passwd" name="password" placeholder="请输入密码" required="required">
        </div>
        <div class="checkbox text-left">
            <label>
                <input type="checkbox" id="remember">记住密码
            </label>
            <a style="margin-left: 30%" href="#">忘记密码?</a>
        </div>

        <p style="text-align: right;color: red;position: absolute" id="info"></p><br/>
            <button id="loginButton" class="btn btn-success btn-block">登录</button>
        </input>

    </div>
</div>
<script>
    $("#id").keyup(
        function () {
            if(isNaN($("#id").val())){
                $("#info").text("提示:账号只能为数字");
            }
            else {
                $("#info").text("");
            }
        }
    )
    // 记住登录信息
    function rememberLogin(username, password, checked) {
        Cookies.set('loginStatus', {
            username: username,
            password: password,
            remember: checked
        }, {expires: 30, path: ''})
    }
    // 若选择记住登录信息，则进入页面时设置登录信息
    function setLoginStatus() {
        var loginStatusText = Cookies.get('loginStatus')
        if (loginStatusText) {
            var loginStatus
            try {
                loginStatus = JSON.parse(loginStatusText);
                $('#username').val(loginStatus.username);
                $('#passwd').val(loginStatus.password);
                $("#remember").prop('checked',true);
            } catch (__) {}
        }
    }
    // 设置登录信息
    setLoginStatus();
    $("#loginButton").click(function () {
        var id =$("#username").val();
        var passwd=$("#passwd").val();
        var remember=$("#remember").prop('checked');
        if( id=='' && passwd==''){
            $("#info").text("提示:账号和密码不能为空");
        }
        else if ( id ==''){
            $("#info").text("提示:账号不能为空");
        }
        else if( passwd ==''){
            $("#info").text("提示:密码不能为空");
        }
        else {
            $.ajax({
                type: "POST",
                url: "/api/loginCheck",
                data: {
                    username:id ,
                    password: passwd
                },
                dataType: "json",
                success: function(data) {
                    if(data.stateCode.trim() == "0") {
                        $("#info").text("提示:用户名不存在!");
                    } else if(data.stateCode.trim() == "1") {
                        $("#info").text("提示:密码错误!");
                    } else if(data.stateCode.trim() == "2"){
                        if(remember){
                            rememberLogin(id,passwd,remember);
                        }else {
                            Cookies.remove('loginStatus');
                        }
                        $("#info").text("提示:登陆成功，跳转中...");
                        window.location.href="/";
                    }
                }
            });
        }
    })
</script>
<!-- 引入footer文件 -->
<%@ include file="footer.jsp"%>
</body>
</html>