<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>用户登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="${context}/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
</head>
<body>
<div class="container">

    <div class="row">
        <div class="span8">

            <form class="form-horizontal" action="login.do?act=login" method="post">
                <div class="control-group">
                    <label class="control-label" for="inputEmail">用户名</label>

                    <div class="controls">
                        <input type="text" id="inputEmail" placeholder="用户名">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputPassword">密码</label>

                    <div class="controls">
                        <input type="password" id="inputPassword" placeholder="密码">
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <label class="checkbox">
                            <input type="checkbox"> Remember me
                        </label>
                        <button type="submit" class="btn">登录</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="row">
            <div class="span8">
                <button class="btn" onclick="toUserMgr()">用户管理</button>
            </div>
        </div>
        <div class="row">
            <div class="span8"><a href="?locale=en_us">us</a> | <a href="?locale=en_gb">gb</a> | <a
                    href="?locale=es_es">es</a> | <a href="?locale=de_de">de</a></div>
        </div>
    </div>
</div>
<script src="${context}/js/jquery.js"></script>
<script src="${context}/bootstrap/js/bootstrap.min.js"></script>
<script>
    function toUserMgr() {
        document.location.href = "u/list";
    }
</script>
</body>
</html>