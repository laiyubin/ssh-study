<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
<br/>
<form action="j_spring_security_check" method="post">
    <input type="hidden" name="act" value="login"/>
    name:<input type="text" name="j_username" value=""/>      </br>
    password:<input type="password" name="j_password" value=""/>  </br>
    <input type="submit"/>
</form>
</body>
</html>