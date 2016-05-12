<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: andrei
  Date: 21.04.2016
  Time: 17:21
  To change this template use File | Settings | File Templates.
--%>
<div class="row">
    <div id="ex1" class="wr-header-detail">
        <c:if test="${pageContext.request.userPrincipal.name != null}" >
            <span class="col-xs-4"><a>Welcome: ${pageContext.request.userPrincipal.name} </a> </span>
            <span class="col-xs-4"><a href="<c:url value="/j_spring_security_logout"/> ">Logout </a> </span>
        </c:if>
        <c:if test="${pageContext.request.userPrincipal.name != 'admin'}" >
            <span class="col-xs-4"><a href="<c:url value="/apointmentList"/> ">Apointments </a> </span>
        </c:if>
        <c:if test="${pageContext.request.userPrincipal.name == 'admin'}" >
            <span class="col-xs-4"><a href="<c:url value="/admin"/> ">Admin</a> </span>
        </c:if>
    </div>
    <nav id="menu" class="menu-header">
        <a href="<c:url value="/"/>" class="col-xs-3"><i class="fa fa-home fa-fw"></i> Home</a>
        <a href="#ex2" class="col-xs-3"><i class="fa fa-calendar fa-fw"></i> Timetable</a>
        <a href="#ex3" class="col-xs-3"><i class="fa fa-medkit fa-fw"></i> Medical services</a>

        <a href="<c:url value="/"/> " class="col-xs-3"> tololo</a>
    </nav>
</div>