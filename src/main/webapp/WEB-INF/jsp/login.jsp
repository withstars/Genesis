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
<header>
    <nav class="navbar navbar-default" role="navigation" style="background-color: white">
        <div class="container-fluid" style="margin-left: 10%">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Coder Forum</a>
            </div>
            <div>
                <!--向左对齐-->
                <ul class="nav navbar-nav navbar-left">
                    <li class="active"><a href="#">技术</a></li>
                    <li><a href="#">好玩</a></li>
                    <li><a href="#">工单</a></li>
                    <li><a href="#">工作</a></li>
                    <li><a href="#">程序员</a></li>
                    <li><a href="#">最热</a></li>
                </ul>
                <!--向右对齐-->



                <form class="navbar-form navbar-right" role="search">
                    <input type="text" class="form-control" id="firstname" placeholder="搜索">
                    <button type="submit" class="btn btn-default btn-sm">
                        <span class="glyphicon glyphicon-search"></span>
                    </button>

                    <button type="button" class="btn btn-default btn-sm" >
                        <span class="glyphicon glyphicon-user"></span>登陆
                    </button>
                </form>
            </div>
        </div>
    </nav>

</header>
<div class="panel panel-default" id="login" style="width: 20%;margin-left: 40%;margin-top: 5%;margin-bottom: 5%">
    <div class="panel-heading" style="background-color: #fff">
        <h3 class="panel-title">登录</h3>
    </div>
    <div class="panel-body">
        <div class="form-group">
            <label for="id">用户名</label>
            <input type="text" class="form-control" id="id" placeholder="请输入用户名">
        </div>
        <div class="form-group">
            <label for="passwd">密码</label>
            <input type="password" class="form-control" id="passwd" placeholder="请输入密码">
        </div>
        <div class="checkbox text-left">
            <label>
                <input type="checkbox" id="remember">记住密码
            </label>
            <a style="margin-left: 30%" href="#">忘记密码?</a>
        </div>

        <p style="text-align: right;color: red;position: absolute" id="info"></p><br/>
        <button id="loginButton"  class="btn btn-success btn-block">登陆
        </button>
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
                $('#id').val(loginStatus.username);
                $('#passwd').val(loginStatus.password);
                $("#remember").prop('checked',true);
            } catch (__) {}
        }
    }
    // 设置登录信息
    setLoginStatus();
    $("#loginButton").click(function () {
        var id =$("#id").val();
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
        else if(isNaN( id )){
            $("#info").text("提示:账号必须为数字");
        }
        else {
            $.ajax({
                type: "POST",
                url: "/api/loginCheck",
                data: {
                    id:id ,
                    passwd: passwd
                },
                dataType: "json",
                success: function(data) {
                    if(data.stateCode.trim() == "0") {
                        $("#info").text("提示:账号或密码错误！");
                    } else if(data.stateCode.trim() == "1") {
                        $("#info").text("提示:登陆成功，跳转中...");
                        window.location.href="/admin_main.html";
                    } else if(data.stateCode.trim() == "2"){
                        if(remember){
                            rememberLogin(id,passwd,remember);
                        }else {
                            Cookies.remove('loginStatus');
                        }
                        $("#info").text("提示:登陆成功，跳转中...");
                        window.location.href="/reader_main.html";
                    }
                }
            });
        }
    })
</script>
<footer class="footer">
    <div class="container">
        我们是高品质的开发者社区，致力于为开发者提供一个分享创造、结识伙伴、协同互助的平台。
        <br/><br/><br/>
        <p>Designed by <span class="glyphicon glyphicon-heart"></span> value</p>
    </div>
    <div class="info">
        <p style="text-align: center;font-size: 16px;">友情链接</p>
        <ul >
            <li><a>七牛云</a></li>
            <li><a>Github</a></li>
            <li><a>Segmentfault</a></li>
            <li><a>V2ex</a></li>
        </ul>
    </div>
    <div class="info">
        <p style="text-align: center;font-size: 16px;">统计信息</p>
        <ul >
            <li>当前在线: 819</li>
            <li>会员数: 19730</li>
            <li>话题数: 5819</li>
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