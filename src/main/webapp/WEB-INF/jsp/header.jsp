<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<header>
    <nav class="navbar navbar-default" role="navigation" style="background-color: white">
        <div class="container-fluid" style="margin-left: 10%">
            <div class="navbar-header">
                <a class="navbar-brand" href="/">Genesis</a>
            </div>
            <div>

                <!--向左对齐-->
                <ul class="nav navbar-nav navbar-left">
                    <li <c:if test="${empty uid}">
                            class="active" </c:if>
                    ><a href="/go?tab=tech">技术</a>
                    </li>

                    <li <c:if test="${empty uid}">
                        </c:if>><a href="/go?tab=play">好玩</a></li>
                    <li <c:if test="${empty uid}">
                        </c:if>><a href="/go?tab=creative">创意</a></li>
                    <li <c:if test="${empty uid}">
                         </c:if>><a href="/go?tab=jobs">工作</a></li>
                    <li <c:if test="${empty uid}">
                        </c:if>><a href="/go?tab=deals">交易</a></li>
                    <li <c:if test="${empty uid}">
                         </c:if>><a href="/go?tab=all">全部</a></li>
                </ul>

                <!--向右对齐-->
          <!--      <form class="navbar-form navbar-right" role="search">
                    <input type="text" class="form-control" id="firstname" placeholder="搜索">

                    <a href="/signin">
                        <button type="button" class="btn btn-default btn-sm" >
                            登录
                        </button>
                    </a>
                    <a href="/signup">
                    <button type="button" class="btn btn-default btn-sm" >
                        注册
                    </button>
                    </a>
                </form>
               -->
                <c:if test="${empty uid}">
                <!--未登陆-->
                 <ul class="nav navbar-nav navbar-right">
                       <li>
                           <p class="navbar-text"><a href="/signin">登录</a></p>
                       </li>
                       <li>
                               <p class="navbar-text"><a href="/signup">注册</a></p>
                       </li>
                 </ul>
                </c:if>
            <c:if test="${!empty uid}">
                   <!--已登陆-->
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <p class="navbar-text"><a href="/">首页</a></p>
                    </li>
                    <li>
                        <p class="navbar-text"><a href="/member/${username}">${username}</a></p>
                    </li>
                    <li>
                        <p class="navbar-text"><a href="/settings">设置</a></p>
                    </li>
                    <li>
                        <p class="navbar-text"><a href="/signout">登出</a></p>
                    </li>
                </ul>
            </c:if>
            </div>
        </div>
    </nav>

</header>
