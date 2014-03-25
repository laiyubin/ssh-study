<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="context" value="${pageContext.request.contextPath}"/>

<div class="container-fluid ">

    <div class="row-fluid">
        <div class="span12">
            <table class="table table-bordered table-striped table-hover">
                <tbody>
                <tr>
                    <td>Id</td>
                    <td>${module.id}</td>
                </tr>
                <tr>
                    <td>name</td>
                    <td>${module.name}</td>
                </tr>
                <tr>
                    <td>Path</td>
                    <td>${module.path}</td>
                </tr>
                </tbody>
            </table>

        </div>
    </div>
</div>
