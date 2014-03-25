<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="context" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <title>create module</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="${context}/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
</head>
<body>
<div class="container ">

    <div class="row">
        <div class="span8">
            <form id="form1" name="form1" class="form-horizontal" action="${context}/m/save" method="post">
                <input type="hidden" name="id" value="${module.id}"/>

                <div class="control-group">
                    <label class="control-label" for="name">Name</label>

                    <div class="controls">
                        <input type="text" name="name" id="name" placeholder="name" value="${module.name}"/>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="path">Path</label>

                    <div class="controls">
                        <input type="text" name="path" id="path" value="${module.path}"/>
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
<script type="text/javascript" src="${context}/js/jquery.js"></script>
<script type="text/javascript" src="${context}/js/jquery.validate.js"></script>
<script type="text/javascript" src="${context}/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
    $().ready(function () {

        $("#form1").validate({
            rules: {
                name: "required",
                path: "required"
            },
            messages: {
                name: "Please enter name",
                path: "Please enter path"
            }});
    });
</script>
</body>
</html>