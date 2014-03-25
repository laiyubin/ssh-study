<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="context" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <title>create role</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="${context}/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
</head>
<body>
<div class="container ">

    <div class="row">
        <div class="span8">
            <form id="form1" class="form-horizontal" action="${context}/r/save" method="post"  >
                <input type="hidden" name="id" value="${role.id}"/>

                <div class="control-group">
                    <label class="control-label" for="name">name</label>

                    <div class="controls">
                        <input type="text" name="name" id="name" placeholder="name" value="${role.name}">
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
<script type="text/javascript" src="${context}/js/jquery.validate.js"></script>
<script type="text/javascript" src="${context}/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
    $().ready(function () {

        $("#form1").validate({
            rules: {
                name: "required"
            },
            messages: {
                name: "Please enter name"
            }});
    });
</script>
</body>
</html>