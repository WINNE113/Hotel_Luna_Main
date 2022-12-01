<%-- 
    Document   : Cart
    Created on : Nov 28, 2022, 9:05:49 AM
    Author     : ASUS-PRO
--%>

<%@page import="java.time.temporal.ChronoUnit"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="Entites.web.RoomCart"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cart</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/main.css">
    </head>

    <body>
        <div id="container">
            <!--header-->
            <jsp:include page="Header.jsp"></jsp:include>
                <!--header-->
                <div id="content" style="border-top: 1px solid rgb(199, 194, 194)">
                    <div class="layout-content" style="margin-top:20px">
                        <div class="left-layout">
                            <div class="total-room">
                                <span>Your cart (${numOfRooms})</span>
                        </div>
                        <%!
                            private Long dayBetween;
                        %>
                        <c:if test="${cart != null}">
                            <% HashMap<Integer, RoomCart> cart = (HashMap<Integer, RoomCart>) session.getAttribute("cart");
                                for (Map.Entry<Integer, RoomCart> en : cart.entrySet()) {
                                    Integer key = en.getKey();
                                    RoomCart roomCart = en.getValue();
                                    dayBetween = ChronoUnit.DAYS.between(roomCart.getInfBooking().getDayCheckIn(), roomCart.getInfBooking().getDayCheckOut());
                            %>
                            <div class="information-room">
                                <div class="detail-information">
                                    <div class="detail-img">
                                        <img src="<%=roomCart.getRoomDetail().getRoomImg()%>"
                                             alt="">
                                    </div>
                                    <div class="detail-room">
                                        <div class="title-room">
                                            <span>Luna Hotel</span>
                                        </div>
                                        <div>
                                            <i class="fa fa-map-marker" aria-hidden="true"></i>
                                            <span><%=roomCart.getRoomDetail().getCityName()%></span>
                                        </div>
                                        <div>
                                            <span style="color: rgb(62, 108, 234); margin-right: 5px;"><%=roomCart.getRoomDetail().getRoomRateDesc()%></span>
                                            <span>000 reviews</span>
                                        </div>
                                    </div>
                                    <div class="detail-icon">
                                        <a href="remove?rid=<%=roomCart.getRoomDetail().getRoomId()%>"><i class="fa fa-trash" aria-hidden="true"></i></a>
                                    </div>
                                </div>
                                <div class="data-check-in-out">
                                    <div class="type-room">
                                        <div style="margin-bottom:4px">
                                            <span>1</span>
                                            <span><%=roomCart.getRoomDetail().getRoomTypeName()%></span>
                                        </div>
                                        <div>
                                            <span><%=roomCart.getInfBooking().getDayCheckIn()%> — <%=roomCart.getInfBooking().getDayCheckOut()%></span>
                                        </div>
                                    </div>
                                    <div class="price-room">
                                        <span><%
                                            double money = 0;
                                            long dayBetween = 0;
                                            dayBetween = ChronoUnit.DAYS.between(roomCart.getInfBooking().getDayCheckIn(), roomCart.getInfBooking().getDayCheckOut());

                                            money += dayBetween * roomCart.getRoomDetail().getRoomPrice();
                                            %>
                                            <%=money%>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <% }%>
                        </c:if>
                    </div>
                    <div class="right-layout">
                        <div class="total-price">
                            <div class="total-all-price">
                                <div>
                                    <div>Total Price</div>
                                    <span>${sessionScope.numOfRooms} items</span>
                                </div>
                                <div class="price">
                                    <span>${sessionScope.totalMoney} VND</span>
                                </div>
                            </div>
                            <div class="check-out">
                                <div class="btn-check-out">
                                    <a href="checkout"><span>Check Out</span></a> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Footer Section Begin -->
            <jsp:include page="Footer.jsp"></jsp:include>
            <!--Footer end-->
        </div>
    </body>

</html>