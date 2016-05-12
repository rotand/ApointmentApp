<%@ page import="com.AndreiWeb.model.Doctor" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: andrei
  Date: 19.04.2016
  Time: 18:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Apointments</title>
    <%@include file="/WEB-INF/views/template/headering.jsp"%>
</head>
<body>
<div class="container-fluid">
    <%@include file="/WEB-INF/views/template/nav.jsp"%>
</div>
<p>Hire you can change Apointment Table</p>
<div class="container">
    <h1>feel the below information to add Meeting</h1>

    <form:form action="${pageContext.request.contextPath}/client/MeetingCalendar/addMeeting" method="post" commandName="meeting">

        <div class="form-group col-xs-3">
            <label for="choose-time">Choose datetime</label>
            <form:input path="DateTime" id="choose-time" type="date"  />
        </div>
        <div class="col-xs-3">
            <label for="choose-time">Choose datetime</label>
                <form:input path="hourTime" id="hourTime" name="hourTime" value="17:10:00"  type="text"/>
        </div>
        <div class="col-xs-3">
            <p>Select Doctor</p>
        <select name="Doctor" id="doctor">
            <c:forEach items="${doctors}" var="doctor">
            <option path="doctor.doctorId" value="${doctor.doctorId}" name="doctor.doctorId">ID:${doctor.doctorId} Name: ${doctor.doctorName}  </option>
            </c:forEach>
        </select>

        </div>


        <input type="submit" value="submit" class="col-xs-3">
        <a href="<c:url value="/admin/ApointmentCalendar"/> ">Cancell</a>
    </form:form>

</div>
</body>