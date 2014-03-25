<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
<div class="container">

    <div class="row">
        <div class="span8 offset2">
            <c:forEach items="${status.allErrors}" var="error">
                <c:out value="${error.defaultMessage}"/><br>
            </c:forEach>
        </div>
    </div>

</div>

<script src="${context}/js/jquery.js"></script>
<script src="${context}/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>