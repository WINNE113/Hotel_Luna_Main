<%-- 
    Document   : CheckOut
    Created on : Nov 28, 2022, 9:06:57 AM
    Author     : ASUS-PRO
--%>

<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="Entites.web.RoomCart"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Check out</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/main.css">
    </head>

    <body>
        <div id="container">
            <!--Header begin-->
            <jsp:include page="Header.jsp"></jsp:include>
                <!--Header end-->
                <div id="breadcrumbs">
                    <h2>CheckOut</h2>
                </div>
                <div id="checkout">
                    <form action="checkout" method="POST">
                        <div class="layout">
                            <div class="info-user">
                                <div class="table-info">
                                    <p>Let us know who you are</p>
                                    <div class="form-group">
                                        <input class="input" type="text" name="fullName" required="" placeholder="Full Name">
                                    </div>
                                    <div class="form-group">
                                        <input class="input" type="text" name="email" required="" placeholder="Email">
                                    </div>
                                    <div class="form-group">
                                        <input class="input" type="text" name="address" required="" placeholder="Address">
                                    </div>
                                    <P>If you enter your email address and do not complete your reservation, we may send you
                                        reminders to help you resume your booking.</P>
                                    <div class="form-group">
                                        <input class="input" type="text" name="phone" required="" placeholder="Phone Number">
                                    </div>
                                </div>
                                <div class="deals-room">
                                    <div class="title-deal">
                                        <span style="font-size:20px; font-weight:bold">Room upgrade deals</span>
                                    </div>
                                    <div>
                                        <span>Discounted add-ons for your trip</span>
                                    </div>
                                    <div class="deal-room">
                                        <div class="deal-breakfast">
                                            <div class="icon">
                                                <img src="https://cdn6.agoda.net/images/default/breakfast.svg" alt="">
                                            </div>
                                            <div class="description">
                                                <span style="font-size: 18px;">Breakfast</span>
                                                <p style="font-size:16px; font-weight:400; margin:0px 0px">Breakfast is included in
                                                    your room deal for no additional charge.</p>
                                            </div>
                                            <div class="btn">
                                                <div style="color:#1aac5b; width:50%; padding:5px 5px;">
                                                    FREE
                                                </div>
                                                <div class="btn-add">
                                                    ADD
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="deal-room">
                                        <div class="deal-breakfast">
                                            <div class="icon">
                                                <img src="https://cdn6.agoda.net/images/default/breakfast.svg" alt="">
                                            </div>
                                            <div class="description">
                                                <span style="font-size: 18px;">Breakfast</span>
                                                <p style="font-size:16px; font-weight:400; margin:0px 0px">Breakfast is included in
                                                    your room deal for no additional charge.</p>
                                            </div>
                                            <div class="btn">
                                                <div style="color:#1aac5b; width:50%; padding:5px 5px;">
                                                    FREE
                                                </div>
                                                <div class="btn-add">
                                                    ADD
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="deal-room">
                                        <div class="deal-breakfast">
                                            <div class="icon">
                                                <img src="https://cdn6.agoda.net/images/default/breakfast.svg" alt="">
                                            </div>
                                            <div class="description">
                                                <span style="font-size: 18px;">Breakfast</span>
                                                <p style="font-size:16px; font-weight:400; margin:0px 0px">Breakfast is included in
                                                    your room deal for no additional charge.</p>
                                            </div>
                                            <div class="btn">
                                                <div style="color:#1aac5b; width:50%; padding:5px 5px;">
                                                    FREE
                                                </div>
                                                <div class="btn-add">
                                                    ADD
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="info-hotel">
                            <c:if test="${cart != null}">
                                <% HashMap<Integer, RoomCart> cart = (HashMap<Integer, RoomCart>) session.getAttribute("cart");
                                    for (Map.Entry<Integer, RoomCart> en : cart.entrySet()) {
                                        int key = en.getKey();
                                        RoomCart val = en.getValue();


                                %>
                                <!--repeat here-->
                                <div class="main-info">
                                    <div class="left-img"
                                         style="background-image: url(<%=val.getRoomDetail().getRoomImg()%>)">
                                    </div>
                                    <div class="right-info">
                                        <div class="type-hotel">
                                            <span>Free Wifi</span>
                                        </div>
                                        <div class="title-hotel">
                                            Luna Hotel
                                        </div>
                                        <div class="address-hotel">
                                            <span><%=val.getRoomDetail().getHotelAddress()%></span>
                                        </div>
                                    </div>
                                </div>

                                <div class="info-room">
                                    <div class="main-room">
                                        <div class="first-main">
                                            <div class="check-in-out">
                                                <span><%=val.getInfBooking().getDayCheckIn()%> - <%=val.getInfBooking().getDayCheckOut()%></span>
                                            </div>
                                            <div class="type-room">
                                                <span><%=val.getRoomDetail().getRoomTypeName()%></span>
                                            </div>
                                        </div>
                                        <div class="last-main">
                                            <div class="type-bed">
                                                <span>Double Bed</span>
                                            </div>
                                            <div class="length-of-stay">
                                                <span style="color:green">1 night</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="detail-room">
                                        <div class="img-room"
                                             style="background-image: url(<%=val.getRoomDetail().getRoomImg()%>)">

                                        </div>
                                        <div class="description-room">
                                            <div class="max-of-people">
                                                <div>
                                                    <span>1 room, <%=val.getInfBooking().getNumOfAdults()%> adults, <%=val.getInfBooking().getNumOfChildren()%> Children</span>
                                                </div>
                                                <div>
                                                    <span>Max ... adults, ... children</span>
                                                </div>
                                            </div>
                                            <div>
                                                <div>
                                                    <i class="fa fa-check" aria-hidden="true"></i>
                                                    Breakfast
                                                </div>
                                                <div>
                                                    <i class="fa fa-check" aria-hidden="true"></i>
                                                    Free WiFi
                                                </div>
                                                <div>
                                                    <i class="fa fa-check" aria-hidden="true"></i>
                                                    Parking
                                                </div>
                                                <div>
                                                    <i class="fa fa-check" aria-hidden="true"></i>
                                                    Tivi, Tu Lanh
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!--end repeat-->
                                    <div class="payment">
                                        <div class="risk-of-book">
                                            <p>RISK FREE cancellation before 23:59 hrs. on</p>
                                            <p><% LocalDate date = LocalDate.now().plusDays(1);%> <%=date%> (property local time)</p>
                                        </div>
                                        <div class="pay-in">
                                            <span>Pay at the hotel</span>
                                        </div>
                                    </div>
                                </div>
                                <%  }%>
                            </c:if>
                            <div class="price-room">
                                <div class="price-booking">
                                    <div class="original-price">
                                        <span>Original price</span>
                                        <span>${totalMoney} VND</span>
                                    </div>
                                    <div class="original-price">
                                        <span>Room price</span>
                                        <span>${totalMoney} VND</span>
                                    </div>
                                    <div class="original-price">
                                        <span>Booking fees</span>
                                        <span style="color:#1aac5b;">FREE</span>
                                    </div>
                                </div>
                                <div class="final-price">
                                    <div class="final">
                                        <span>Final price</span>
                                        <span>${totalMoney} VND</span>
                                    </div>
                                    <div>
                                        <button style="display: block; width: 100%;" class="check-out" type="submit">CHECK OUT</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <!-- Footer Section Begin -->
            <jsp:include page="Footer.jsp"></jsp:include>
            <!-- Footer Section End -->
        </div>
    </body>

</html>