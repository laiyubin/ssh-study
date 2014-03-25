<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="context" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <title>Module</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="${context}/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="span8 offset2">
            <button class="btn" onclick="toCreate()"> Create Module</button>
        </div>
    </div>
    <c:if test="${errors}">
    <div class="row">
        <div class="span8 offset2">
            ${errors}
        </div>
    </div>
    </c:if>
    <div class="row">
        <div class="span8 offset2">
            <table class="table table-bordered table-striped table-hover">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Operation</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${page.result}" var="module">
                    <tr>
                        <td>${module.id}</td>
                        <td>${module.name}</td>
                        <td>${module.path}</td>
                        <td>
                            <a href="#" onclick="javascript:showDetailDialog(${module.id})"><i class="icon-list-alt" alt="detail"></i></a>
                            <a href="#" onclick="javascript:toUpdate(${module.id})"><i class="icon-edit" alt="edit"></i></a>
                            <a href="#" onclick="javascript:toDelete(${module.id})"><i class="icon-remove" alt="remove"></i></a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <div class="pagination pagination-right">
                <ul>
                    <li class="${page.currentPage-1>0?"":"disabled"}"><a href="${context}/m/list?currentPage=${page.currentPage-1}&pageSize=10">Prev</a></li>
                    <c:forEach begin="1" end="${page.allPage}" var="idx">
                        <c:choose>
                            <c:when test="${page.currentPage== idx}">
                                <li class="disabled"><a href="#">${idx}</a></li>
                            </c:when>
                            <c:otherwise>
                                <li><a href="${context}/m/list?currentPage=${idx}&pageSize=10">${idx}</a></li>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                    <li class="${page.currentPage!=page.allPage?"":"disabled"}"><a href="${context}/m/list?currentPage=${page.currentPage+1}&pageSize=10">Next</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div id="detailDialog" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="myModalLabel">用户信息</h3>
    </div>
    <div class="modal-body"></div>
    <div class="modal-footer">
        <button class="btn btn-primary" data-dismiss="modal" aria-hidden="true">关闭</button>
    </div>
</div>
<script src="${context}/js/jquery.js"></script>
<script src="${context}/bootstrap/js/bootstrap.min.js"></script>
<script>
    function toCreate() {
        document.location.href = "${context}/m/new/-1";
    }
    function toUpdate(id) {
        document.location.href = "${context}/m/update/"+id;
    }

    function toDelete(id){
       if(window.confirm("您确定要删除这条记录吗？") )      {
           document.location.href = "${context}/m/remove/"+id;
       }
    }
    function showDetailDialog(id) {
       // $("#detailDialog .modal-body").html('');
        $("#detailDialog .modal-body").load(
             '${context}/m/' + id,null, function (data) {
                $("#detailDialog .modal-body").html(data);
            }
         );
        $('#detailDialog').modal({
            backdrop: 'static'
        })
    }
</script>
</body>
</html>