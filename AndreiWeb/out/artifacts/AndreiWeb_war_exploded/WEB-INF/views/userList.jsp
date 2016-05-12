<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: andrei
  Date: 19.04.2016
  Time: 10:17
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Doctor List</title>
    <%@include file="/WEB-INF/views/template/headering.jsp"%>


</head>
<body>
<div class="main container-fluid">
    <section class="text-center">
        <h1 class="h1-main">Doctors</h1>

        <c:forEach items="${doctors}" var="doctor">
            <div class="about-doctor col-xs-3">
                <div class="wr-img">
                    <img src="<c:url value="/resources/images/dentist-2.jpg"/>" alt="" />
                    <div class="img-overlay">
                        <span class="phone">Phone: ${doctor.doctorSurname}</span>
                        <span class="phone">Email: ${doctor.doctorEmail}</span>
                        <a href="#"><i class="fa fa-facebook fa-fw"></i></a>
                        <a href="#"><i class="fa fa-skype fa-fw"></i></a>
                    </div>
                </div>

                <article>
                    <h3>${doctor.doctorName} ${doctor.doctorSurname}</h3>
                    <p>${doctor.doctorDegree}</p>
                    <span>${doctor.doctorSurname}</span>
                </article>
            </div>
        </c:forEach>

    </section>


</div>
</body>
</html>
