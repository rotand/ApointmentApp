<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: andrei
  Date: 24.04.2016
  Time: 19:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/WEB-INF/views/template/headering.jsp"%>
    <title>Title</title>
</head>
<body>
<%@include file="/WEB-INF/views/template/nav.jsp"%>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Register Client</h1>

            <p class="lead">Please fill in your information below:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/register" method="post"
                   commandName="client">

        <h3>Basic Info</h3>

        <div class="form-group">
            <label for="name">Name</label><form:errors path="clientName" cssStyle="color: #ff0000"/>
            <form:input path="clientName" id="name" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="email">Email</label><span style="color: #ff0000">${emailMsg}</span><form:errors
                path="clientEmail" cssStyle="color: #ff0000"/>
            <form:input path="clientEmail" id="email" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="phone">Phone</label>
            <form:input path="clientPhone" id="phone" class="form-Control"/>
        </div>

            <div class="form-group">

                    <label for="username">Username</label><span style="color: #ff0000">${usernameMsg}</span><form:errors
                    path="users.username" cssStyle="color: #ff0000"/>
                <form:input path="users.username" id="username" class="form-Control"/>
            </div>
        <div class="form-group">
            <label for="password">Password</label><span style="color: #ff0000">${pswMsg}</span><form:errors
                path="users.password" cssStyle="color: #ff0000"/>
            <form:password path="users.password" id="password" class="form-Control"/>
        </div>



        <br><br>
        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/" />" class="btn btn-default">Cancel</a>
        </form:form>
        </div>
    </div>

</body>
</html>
