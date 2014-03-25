<%--
  Created by IntelliJ IDEA.
  User: wlai
  Date: 8/2/13
  Time: 3:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<sec:authorize
        access="authenticated"
        var="authenticated"/>
<table>
    <tr>
        <c:choose>
            <c:when test="${authenticated}">
                <td>Welcome
                    <sec:authentication property="name"/>
                    <a href="${ctx}/j_spring_security_logout">退出</a>
                </td>
            </c:when>
            <c:otherwise>
                <td><a href="${ctx}/src/main/webapp/login.jspwebapp/login.jsp"> 登录</a></td>
            </c:otherwise>
        </c:choose>
    </tr>
</table>