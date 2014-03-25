<%--
  Created by IntelliJ IDEA.
  User: wlai
  Date: 8/1/13
  Time: 5:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="/src/main/webapp/header.jsp"%>
<html>
<head>
    <title></title>
</head>
<body>
<table>
    <tr>
        <th>Id</th>
        <th>Name</th>
    </tr>
   <c:forEach items="${users}" var="user" >
      <tr>
          <td>${user.id}</td>
          <td>${user.name}</td>
      </tr>
   </c:forEach>
</table>
</body>
</html>