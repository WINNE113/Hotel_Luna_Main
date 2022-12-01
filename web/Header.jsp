<%-- 
    Document   : header
    Created on : Nov 3, 2022, 8:21:18 PM
    Author     : ASUS-PRO
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header class="header-section">
    <div class="top-nav">
        <div class="container">
            <div class="row">
                <div class="col-lg-5">
                    <ul class="tn-left">
                        <li>
                            <i class="fa fa-phone"></i>
                            (+84) 345678910
                        </li>
                        <li>
                            <i class="fa fa-envelope"></i>
                            Bookinghotel.com.vn
                        </li>
                    </ul>
                </div>
                <div class="col-lg-7">
                    <div class="tn-right">
                        <div class="top-social">
                            <a href="#"><i class="fa fa-facebook-f"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-tripadvisor"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                        </div>
                        <a href="room" class="bk-btn">Booking Now</a>
                        <c:if test="${sessionScope.account == null}">
                            <a href="Login.jsp" class="login">Login</a>
                        </c:if>
                        <c:if test="${sessionScope.account != null}">
                            <a href="logout" class="inf">LogOut</a>
                            <p class="login">${sessionScope.account.lastName}</p>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>   
    </div>
    <div class="menu-item">
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                    <div class="logo">
                        <a class="navbar-brand" href="#">
                            <img src="assets/img/logo.png" width="50%" height="10%" class="img-thumbnail" alt="logo">
                        </a>
                    </div>
                </div>
                <div class="col-lg-10">
                    <div class="nav-menu">
                        <nav class="mainmenu">
                            <ul id="navList">
                                <li class="active"><a href="home">Home</a></li>
                                <li><a href="room">Rooms</a></li>
                                <li><a href="About.jsp">About Us</a></li>
                                <li><a href="#">Pages</a>
                                    <ul class="dropdown">
                                        <li><a href="#">Room Details</a></li>
                                        <li><a href="#">Blog Details</a></li>
                                        <li><a href="#">Family Room</a></li>
                                        <li><a href="#">Premium Room</a></li>
                                    </ul>
                                </li>
                                <li><a href="Blog.jsp">News</a></li>
                                <li><a href="Contact.jsp">Contact</a></li>
                            </ul>
                        </nav>
                        <div class="nav-right search-switch">
                            <div class="dropdown">
                                <!--<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">-->
                                <i class="fa fa-shopping-cart"></i>
                                <a href="Cart.jsp"><span style="font-size: 18px;font-weight: 600;">Your Cart</span></a>
                                <!--</button>-->
                                <!--                                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                                                    <li><a class="dropdown-item" href="Cart.jsp">Cart</a></li>
                                                                    <li><a class="dropdown-item" href="#">History booking</a></li>
                                                                </ul>-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
