<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="context" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <title>用户登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="${context}/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
</head>
<body>
<div class="container ">

    <div class="row">
        <div class="span8">
            <form class="form-horizontal" action="${context}/u/save" method="post" onsubmit="return formValidate()">
                <input type="hidden" id="id" name="id" value="${user.id}"/>
                <input type="hidden" id="version" name="version" value="${user.version}"/>
                <div class="control-group">
                    <label class="control-label" for="name">用户名</label>

                    <div class="controls">
                        <input type="text" name="name" id="name" placeholder="用户名" value="${user.name}"/>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="password">密码</label>

                    <div class="controls">
                        <input type="password" name="password" id="password"/>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="confirmPassword">确认密码</label>

                    <div class="controls">
                        <input type="password" id="confirmPassword">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">roles</label>

                    <div class="controls">
                        <c:forEach items="${roles}" var="role">
                            <input type="checkbox" name="roleIds" value="${role.id}" ${fn:contains(user.roles,role)?"checked":""}/>${role.name}
                        </c:forEach>
                    </div>
                </div>
                <div class="form-actions">
                    <button type="submit" class="btn btn-primary">Save</button>
                    <button type="button" class="btn">Cancel</button>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="${context}/js/jquery.js"></script>
<script src="${context}/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript">
    function formValidate(f) {
        var name = $("#name").val()
        if ($.trim(name) == '') {

            alert('用户名不能为空');

            return false;
        }
        var pwd = $("#password").val();
        var confPwd = $("#confirmPassword").val();
        if (pwd != confPwd) {

            alert('两次输入密码不一致')
            return false;
        }
        if ($.trim(pwd).length < 6) {
            alert('密码长度必须大于6位')
            return false;
        }
        f.submit();
    }
</script>
</body>
</html>