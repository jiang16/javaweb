<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2019/1/2
  Time: 8:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!Doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>公告--宿舍管理系统</title>
    <link rel="stylesheet" href="./statics/css/layui.css">
    <link rel="stylesheet" href="./statics/css/main.css">
</head>
<body>
<%--头部导航栏--%>
<jsp:include page="layout/header.jsp"/>

<%--主体内容--%>
<div class="layui-container">
    <div class="layui-row main">
    <div class="layui-col-md8 notice">
        <div class="layui-collapse " lay-accordion>
            <c:forEach items="${list_page}" var="notice">
            <div class="layui-colla-item">
                <h2 class="layui-colla-title">${notice.title} <span class="title-time">${notice.created_at}</span></h2>
                <div class="layui-colla-content">${notice.content}</div>
            </div>
            </c:forEach>
        </div>
        <div class="layui-table-page">
            <div>
                <div class="layui-box layui-laypage layui-laypage-default">
                    <%--上一页--%>
                    <a href="/dormitory/user/notice?page=${page.page-1}" class="layui-laypage-prev layui-disabled">
                        <i class="layui-icon"></i>
                    </a>
                        <%--当前页--%>
                        <span class="layui-laypage-curr">
                            <em class="layui-laypage-em"></em>
                            <em>1</em>
                        </span>


                    <a href="">2</a>
                    <a href="">3</a>
                    <a href="" class="layui-laypage-last" >100</a>
                    <%--下一页--%>
                    <a href="" class="layui-laypage-next">
                        <i class="layui-icon"></i>
                    </a>
                    <%--跳转到第X页--%>
                    <span class="layui-laypage-skip">
                                到第
                                <select name="" id="">
                                    <option value="1">1</option>
                                </select>
                                页
                                <button type="button" class="layui-laypage-btn">确定</button>
                            </span>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="layout/sidebar.jsp"/>
</div>
</div>
<jsp:include page="layout/script.jsp"/>
</body>
</html>