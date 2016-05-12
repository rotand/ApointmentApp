<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: andrei
  Date: 18.04.2016
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Tests</title>
    <%@include file="/WEB-INF/views/template/headering.jsp"%>
</head>

<body>
<header>
    <div class="container-fluid">
        <%@include file="/WEB-INF/views/template/nav.jsp"%>
        <div class="row">
            <div class="wr-slider">
                <ul class="bxslider">
                    <li>
                        <div class="content x2-width">
                            <div class="frame-white small-pading">
                                <h1>Make an apointment easely</h1>
                                <section class=" wr-make-appointment">
                                    <div class="">
                                        <form>
                                            <div class="col-xs-3 clinick-news">
                                                <h3>Clinic News</h3>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. sunt et, reprehenderit asperiores!</p>
                                            </div>
                                            <div class="col-xs-3 opening-hours">
                                                <h3>Opening Hours</h3>
                                                <table>
                                                    <tr>
                                                        <td>Modnay - Friday</td>
                                                        <td>8.00 - 17.00</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Saturday</td>
                                                        <td>9.30 - 17.30</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Sunday</td>
                                                        <td>9.30 - 15.00</td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div class="form-group col-xs-2">
                                                <input type="text" placeholder="Full Name" />
                                                <input type="date" />
                                            </div>
                                            <div class="form-group col-xs-2">
                                                <input type="text" placeholder="Email" />
                                                <select>
                                                    <option>Doctor</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-xs-2">
                                                <input type="text" placeholder="Phone Number" />
                                                <button type="submit">Send</button>
                                            </div>
                                        </form>
                                    </div>
                                </section>
                            </div>
                        </div>
                        <img class="img-responsive " src="<c:url value="/resources/images/paralax-3.jpg" />" alt="" />
                    </li>
                    <li>
                        <div class="content x2-width large">

                            <div class="frame-white small-pading">
                                <h1>Pliz Find Some Kandy's for Kitty</h1>
                                <section class="drag-drop">

                                    <div class="wr-teeth row">
                                        <div class="mouth-open"></div>

                                    </div>
                                </section>
                            </div>
                        </div>
                        <img class="img-responsive" "<c:url value="/resources/images/slide-1.jpg" />" alt="" />
                    </li>
                    <li>
                        <div class="content large">
                            <div class="frame-white">
                                <h1>Satisfied Customer</h1>
                                <iframe src="https://www.youtube.com/embed/10r9ozshGVE" frameborder="0" allowfullscreen="0">
                                </iframe>
                            </div>
                        </div>
                        <img class="img-responsive" src="<c:url value="/resources/images/paralax.jpg" />" alt="" />
                    </li>
                </ul>
                <div class="outside">

                    <p><span id="slider-prev"></span> | <span id="slider-next"></span></p>
                </div>
                <div class="nav-log-reg">
                    <form class="col-xs-6">
                        <div class="row">
                            <span class="col-xs-2"><a href="<c:url value="/register"/> ">Register</a> </span>
                            <span class="col-xs-2"><a href="<c:url value="/login"/> ">Login</a> </span>
                        </div>
                    </form>
                    <!-- Modal Login and Modal Register -->

                    <button type="button" class="log col-xs-2 choose-login" id="login">Login</button>
                    <button type="button" id="register" class="reg col-xs-2 choose-register">Register</button>
                </div>
            </div>
            <!-- The Modal REgister -->
            <div id="register-modal" class="modal">
                <!-- Modal content -->
                <div class="modal-content">
                    <div class="close"><i class="fa fa-times fa-fw"></i> Close</div>
                    <form action="" class="form-reg">
                        <div class="form-group">
                            <input class="form-control" type="text" placeholder="Name" />
                        </div>
                        <div class="form-group">
                            <input class="form-control" type="text" placeholder="Email" />
                        </div>
                        <div class="form-group">
                            <input class="form-control" type="text" placeholder="Password" />
                        </div>
                        <button type="submit">Register</button>
                    </form>
                    <form action="" class="form-log">
                        <div class="form-group">
                            <input class="form-control" type="text" placeholder="Uername" />
                        </div>
                        <div class="form-group">
                            <input class="form-control" type="text" placeholder="Password" />
                        </div>
                        <button type="submit">Login</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</header>
<div class="main container-fluid">
    <section class="text-center">
        <h1 class="h1-main">Our Doctors</h1>
        <c:forEach items="${doctor}" var="doctor">
            <div class="about-doctor col-xs-3">
                <div class="wr-img">
                    <img src="<c:url value="/resources/images/dentist-2.jpg"/>" alt="" />
                    <div class="img-overlay">
                        <span class="phone">Phone: ${doctor.doctorPhone}</span>
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
    <section class="row wr-make-appointment">
        <div class="container">
            <h2 class="h1-main">Make an apointment</h2>
            <form>
                <div class="col-xs-3 clinick-news">
                    <h3>Clinic News</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. sunt et, reprehenderit asperiores!</p>
                </div>
                <div class="col-xs-3 opening-hours">
                    <h3>Opening Hours</h3>
                    <table>
                        <tr>
                            <td>Modnay - Friday</td>
                            <td>8.00 - 17.00</td>
                        </tr>
                        <tr>
                            <td>Saturday</td>
                            <td>9.30 - 17.30</td>
                        </tr>
                        <tr>
                            <td>Sunday</td>
                            <td>9.30 - 15.00</td>
                        </tr>
                    </table>
                </div>
                <div class="form-group col-xs-2">
                    <input type="text" placeholder="Full Name" />
                    <input type="date" />
                </div>
                <div class="form-group col-xs-2">
                    <input type="text" placeholder="Email" />
                    <select>
                        <option>Doctor</option>
                    </select>
                </div>
                <div class="form-group col-xs-2">
                    <input type="text" placeholder="Phone Number" />
                    <button type="submit">Send</button>
                </div>
            </form>
        </div>
    </section>
    <div class="container">
        <div class="row">
            <section class="wr-services">
                <h3 class="h1-main">Our Services</h3>
                <div class="col-xs-4">
                    <div id="ex3" class="one-service">
                        <button id="overrlay-open1"><i class="fa fa-check-circle-o"></i> First Service</button>
                    </div>
                    <div class="one-service">
                        <button id="overrlay-open2"><i class="fa fa-check-circle-o"></i> First Service</button>
                    </div>
                    <div class="one-service">
                        <button id="overrlay-open3"><i class="fa fa-check-circle-o"></i> First Service</button>
                    </div>
                    <div class="one-service">
                        <button id="overrlay-open4"><i class="fa fa-check-circle-o"></i> First Service</button>
                    </div>
                </div>
                <div class="col-xs-8 info-service">
                    <div id="info-service1">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab a architecto consequatur in. Veritatis blanditiis optio, officia. Quaerat, quisquam repudiandae, suscipit ex expedita architecto modi in porro delectus ipsum nisi, consequatur excepturi, rerum iure eveniet odio dolore nesciunt. Accusantium, suscipit.111111Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo accusamus inventore soluta sunt repellendus hic in nemo accusantium ad ab distinctio nesciunt ipsam veritatis reprehenderit, optio quam odio modi molestias!
                    </div>
                    <div id="info-service2">
                        222222222Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo accusamus inventore soluta sunt repellendus hic in nemo accusantium ad ab distinctio nesciunt ipsam veritatis reprehenderit, optio quam odio modi molestias!
                    </div>
                    <div id="info-service3">
                        333333Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo accusamus inventore soluta sunt repellendus hic in nemo accusantium ad ab distinctio nesciunt ipsam veritatis reprehenderit, optio quam odio modi molestias!
                    </div>
                    <div id="info-service4">
                        444444444Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo accusamus inventore soluta sunt repellendus hic in nemo accusantium ad ab distinctio nesciunt ipsam veritatis reprehenderit, optio quam odio modi molestias!
                    </div>
                </div>
            </section>
        </div>
    </div>

</div>
<div class="container-fluid">
    <div class="row">
        <div class="wr-paralax">
            <section class="parallax">
                <div class="parallax-inner">
                    <div id="ex2" class="section-calendar">
                        <nav class="container">
                            <a class="col-xs-2" href=""><i class="fa fa-chevron-left"></i></a>
                            <span class="month col-xs-4">February</span>
                            <a class="col-xs-2" href=""><i class="fa fa-chevron-right"></i></a>
                            <select name="" id="" class="col-xs-4 select-doctor">
                                <option value="">Doctor</option>
                            </select>
                        </nav>
                        <table class="container">
                            <tr>
                                <td class=""></td>
                                <td class="">Luni</td>
                                <td class="">Marti</td>
                                <td class="">Miercuri</td>
                                <td class="">Joi</td>
                                <td class="">Vineri</td>
                                <td class="">Simbata</td>
                                <td class="">Duminica</td>
                            </tr>
                            <tr>
                                <td>01-07</td>
                                <td><a class="demo01" href="#animatedModal">01</a></td>
                                <td>
                                    <a href="" class="tooltip">02
                                        <span class="tooltiptext">Bussy</span>
                                    </a>
                                </td>
                                <td><a class="demo01" href="#animatedModal">02</a></td>
                                <td><a class="demo01" href="#animatedModal">03</a></td>
                                <td><a class="demo01" href="#animatedModal">04</a></td>
                                <td><a class="demo01" href="#animatedModal">05</a></td>
                                <td><a class="demo01" href="#animatedModal">06</a></td>
                            </tr>
                            <tr>
                                <td>08-14</td>
                                <td>08 </td>
                                <td>09 </td>
                                <td>10 </td>
                                <td>11 </td>
                                <td>12 </td>
                                <td>13 </td>
                                <td>14 </td>
                            </tr>
                            <tr>
                                <td>15-21</td>
                                <td>15 </td>
                                <td>16 </td>
                                <td>17 </td>
                                <td>18 </td>
                                <td>19 </td>
                                <td>20 </td>
                                <td>21</td>
                            </tr>
                            <tr>
                                <td>22-28</td>
                                <td>22 </td>
                                <td>23 </td>
                                <td>24 </td>
                                <td>25 </td>
                                <td>26 </td>
                                <td>27 </td>
                                <td>28 </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>
<!--DEMO01-->
<div id="animatedModal">
    <!--THIS IS IMPORTANT! to close the modal, the class name has to match the name given on the ID  class="close-animatedModal" -->
    <div class="close-animatedModal"><i class="fa fa-times fa-fw"></i> CLOSE</div>
    <div class="modal-content">
        <!--Your modal content goes here-->
        <span class="h1-main">Curent Date</span>
        <section class="row wr-make-appointment in-table">
            <div class="col-xs-4 col-xs-offset-8">
                <h2 class="h1-main">Make an apointment</h2>
                <form>
                    <div class="form-group col-xs-2">
                        <input type="text" placeholder="Full Name" />
                    </div>
                    <div class="form-group col-xs-2">
                        <input type="text" placeholder="Email" />
                    </div>
                    <div class="form-group col-xs-2">
                        <input type="text" placeholder="Phone Number" />
                        <button type="submit">Send</button>
                    </div>
                </form>
            </div>
        </section>
        <table class="table-day">
            <tr>
                <td class="time">Hour/Min</td>
                <td class="status">15min</td>
                <td class="status">30min</td>
                <td class="status">45min</td>
                <td class="status">59min</td>
            </tr>
            <tr>
                <td class="time">08:00 - 09:00</td>
                <td class="status">free</td>
                <td class="status">
                    <button id="make-apoint"> free</button>

                </td>
                <td class="status">free</td>
                <td class="status">free</td>
            </tr>
            <tr>
                <td class="time">09:00 - 10:00</td>
                <td class="status">free</td>
                <td class="status">free</td>
                <td class="status">free</td>
                <td class="status">free</td>
            </tr>
            <tr>
                <td class="time">10:00 - 11:00</td>
                <td class="status">free</td>
                <td class="status">free</td>
                <td class="status">free</td>
                <td class="status">free</td>
            </tr>
            <tr>
                <td class="time">11:00 - 12:00</td>
                <td class="status">free</td>
                <td class="status">free</td>
                <td class="status">free</td>
                <td class="status">free</td>
            </tr>
            <tr>
                <td class="time">12:00 - 13:00</td>
                <td class="status">free</td>
                <td class="status">free</td>
                <td class="status">free</td>
                <td class="status">free</td>
            </tr>
            <tr>
                <td class="time">13:00 - 14:00</td>
                <td class="status">free</td>
                <td class="status">free</td>
                <td class="status">free</td>
                <td class="status">free</td>
            </tr>
            <tr>
                <td class="time">14:00 - 15:00</td>
                <td class="status">free</td>
                <td class="status">free</td>
                <td class="status">free</td>
                <td class="status">free</td>
            </tr>
            <tr>
                <td class="time">15:00 - 16:00</td>
                <td class="status">free</td>
                <td class="status">free</td>
                <td class="status">free</td>
                <td class="status">free</td>
            </tr>
            <tr>
                <td class="time">16:00 - 17:00</td>
                <td class="status">free</td>
                <td class="status">free</td>
                <td class="status">free</td>
                <td class="status">free</td>
            </tr>
            <tr>
                <td class="time">17:00 - 18:00</td>
                <td class="status">free</td>
                <td class="status">free</td>
                <td class="status">free</td>
                <td class="status">free</td>
            </tr>
        </table>
    </div>
</div>
<div id="map"></div>
<div id="ex4"></div>
<div id="ex1" class="wr-header-detail">
    <span class="col-xs-4"><i class="fa fa-map-marker fa-fw"></i> Puskina 44 / 22</span>
    <span class="col-xs-4"><i class="fa fa-phone fa-fw"></i> (323) 7 22 33 </span>
    <span class="col-xs-4"><i class="fa fa-envelope fa-fw"></i> Medical@gmail.com</span>
</div>
</body>

</html>
