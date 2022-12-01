<%-- 
    Document   : Room
    Created on : Nov 4, 2022, 10:48:22 AM
    Author     : ASUS-PRO
--%>

<%@page import="java.time.LocalDate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Room</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/main.css">
        <link rel="stylesheet" hre="assets/css/responsive-style.css">
        <link rel="stylesheet" href="./assets/css/room.css">

    </head>

    <body>
        <div id="container">
            <!-- header -->
            <jsp:include page="Header.jsp"></jsp:include>
                <!-- header -->
                <!-- home background -->
                <div id="home-background">
                    <!-- home -->
                    <div class="background">
                        <!-- home background-->
                    </div>
                    <div class="title">
                        <!-- home title-->
                        <h1 style="color: #fff">Our Room</h1>
                    </div>
                </div>

                <!-- search -->
                <div id="search_room">
                    <div class="grid width">
                        <!-- search place -->
                        <div class="search_address grid width">
                            <div class="search_container">
                                <div class="hotel_place active">
                                    <!-- style="filter: brightness(200%) grayscale(100%) -->
                                    <img src="./assets/img/home/hotel.webp" alt="icon hotel">
                                    <span style="margin-left:4px;">Hotels</span>
                                </div>
                                <div class="hotel_place place">
                                    <img style="width:35px;" src="./assets/img/home/hotel_icon.png" alt="icon place hotel">
                                    <span><a href="searchbyplace?hid=1">Ha Noi</a></span>
                                </div>
                                <div class="hotel_place place">
                                    <img style="width:35px;" src="./assets/img/home/hotel_icon.png" alt="icon place hotel">
                                    <span><a href="searchbyplace?hid=2">TP Ho Chi Minh</a></span>
                                </div>
                                <div class="hotel_place place">
                                    <img style="width:35px;" src="./assets/img/home/hotel_icon.png" alt="icon place hotel">
                                    <span><a href="searchbyplace?hid=3">Da Nang</a></span>
                                </div>
                                <div class="hotel_place">
                                    <img style="width:35px;" src="./assets/img/home/hotel_icon.png" alt="icon place hotel">
                                    <span>Place</span>
                                </div>
                            </div>
                        </div>

                        <!-- search address -->
                        <div class="search_container">
                            <form action="checkvalidroom" method="POST">
                                <div class="search_layout">
                                    <div class="search_info">
                                        <div class="block_search search_desc">
                                            <span>Address Hotel</span>
                                            <div class="search_input">
                                                <input type="text" readonly="" placeholder="${room.hotelAddress}">
                                        </div>
                                    </div>
                                    <div class="block_search">
                                        <span>Check In</span>
                                        <div class="search_input">
                                            <div class="check-date">
                                                <%
                                                    request.setAttribute("minDayToCheckIn", LocalDate.now());
                                                    request.setAttribute("maxDayToCheckIn", LocalDate.now().plusMonths(1));
                                                %>
                                                <input required="" id="MyID" type="datetime-local" placehodel="" name="checkIn" value="" min="${minDayToCheckIn}T00:00" max="${maxDayToCheckIn}T00:00">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="block_search">
                                        <span>Check Out</span>
                                        <div class="search_input">
                                            <div class="check-date">
                                                <input required="" id="MyID" type="datetime-local" placehodel="" name="checkOut" value="" min="${minDayToCheckIn}T00:00" max="${maxDayToCheckIn}T00:00">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="block_search search_adults">
                                        <span>Adults</span>
                                        <div class="search_input">
                                            <select name="adults" id="">
                                                <option value="1">01</option>
                                                <option value="2">02</option>
                                                <option value="3">03</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="block_search search_children">
                                        <span>Children</span>
                                        <div class="search_input">
                                            <select name="children" id="">
                                                <option value="1">01</option>
                                                <option value="2">02</option>
                                                <option value="3">03</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <button class="booking" type="submit">Check Availability</button> 
                                    <span>${message}</span>
                                    <input type="hidden" name="rid" value="${room.roomId}">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- content -->
            <div id="content">

                <div class="row">
                    <!-- filter -->
                    <div class="filter">
                        <div class="filter_layout">
                            <div class="sub_filter filter_by">
                                <div class="title_filter">
                                    <span>Filter by</span>
                                </div>
                            </div>
                            <div class="sub_filter">
                                <div class="title_filter">
                                    <span>Price</span>
                                    <div>
                                        <input class="filter_by_price" type="Checkbox" name="price" id="" value="0-150">
                                        <label for="price"> 0$ - 150$</label>
                                    </div>
                                    <div>
                                        <input class="filter_by_price" type="Checkbox" name="price" id="" value="150-500">
                                        <label for="price"> 150$ - 500$</label>
                                    </div>
                                    <div>
                                        <input class="filter_by_price" type="Checkbox" name="price" id="" value="500-2000">
                                        <label for="price"> 500$ - 2000$</label>
                                    </div>
                                    <div>
                                        <input class="filter_by_price" type="Checkbox" name="price" id="" value="2000-5000000">
                                        <label for="price"> 2000$ +</label>
                                    </div>

                                </div>
                            </div>
                            <div class="sub_filter">
                                <div class="title_filter">
                                    <span>Room type</span>
                                    <div>
                                        <input class="filter_by_room_type" type="checkbox" name="type_room" id="" value="President">
                                        <label for="type_room">President</label>
                                    </div>
                                    <div>
                                        <input class="filter_by_room_type" type="checkbox" name="type_room" id="" value="Superior">
                                        <label for="type_room">Superior</label>
                                    </div>
                                    <div>
                                        <input class="filter_by_room_type" type="checkbox" name="type_room" id="" value="Executive">
                                        <label for="type_room">Executive</label>
                                    </div>
                                    <div>
                                        <input class="filter_by_room_type" type="checkbox" name="type_room" id="" value="Standard">
                                        <label for="type_room">Standard</label>
                                    </div>
                                </div>
                            </div>
                            <div class="sub_filter">
                                <div class="title_filter">
                                    <span>Bed type</span>
                                    <div>
                                        <input class="filter_by_bed_type" type="checkbox" name="type_bed" id="" value="Double">
                                        <label for="type_bed_1">Double</label>
                                    </div>
                                    <div>
                                        <input class="filter_by_bed_type" type="checkbox" name="type_bed" id="" value="Queen">
                                        <label for="type_bed_2">Queen</label>
                                    </div>
                                    <div>
                                        <input class="filter_by_bed_type" type="checkbox" name="type_bed" id="" value="Single">
                                        <label for="type_bed_3">Single/twin</label>
                                    </div>
                                </div>
                            </div>
                            <div class="sub_filter">
                                <div class="title_filter">
                                    <span>Start rating</span>
                                    <div>
                                        <input type="checkbox" name="start_rating_1" id="start_rating_1" value="">
                                        <label for="start_rating_1">5 sao</label>
                                    </div>
                                    <div>
                                        <input type="checkbox" name="start_rating_2" id="start_rating_2" value="">
                                        <label for="start_rating_2">4 sao</label>
                                    </div>
                                    <div>
                                        <input type="checkbox" name="start_rating_3" id="start_rating_3" value="">
                                        <label for="start_rating_3">3 sao</label>
                                    </div>
                                    <div>

                                        <input type="checkbox" name="start_rating_4" id="start_rating_4" value="">
                                        <label for="start_rating_4">2 sao</label>
                                    </div>
                                    <div>

                                        <input type="checkbox" name="start_rating_5" id="start_rating_5" value="">
                                        <label for="start_rating_5">1 sao</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- content -->
                    <div class="content_layout">
                        <div class="result_number">
                            <span>Result: ${total}</span>
                        </div>
                        <label id="filter_room">
                            <c:forEach items="${listRoom}" var="item">
                                <div class="result_block">
                                    <div class="image_hotel">
                                        <img src="${item.roomImg}" alt="room hotel">
                                    </div>
                                    <div class="content_hotel">
                                        <div class="main_content">
                                            <div class="title_hotel">
                                                <span>${item.roomTypeName}</span>
                                            </div>
                                            <div class="address_hotel">
                                                <span>${item.hotelAddress}</span>
                                            </div>
                                            <div class="price_hotel">
                                                <span>From</span>
                                                <h5>VND ${item.roomPrice}</h5>
                                                <span>For Night</span>
                                            </div>
                                        </div>
                                        <div class="btn_booking">
                                            <a href="checkvalid?rid=${item.roomId}">Add To Cart</a>
                                            <span></span>
                                            <span></span>
                                            <span></span>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </label>
                    </div>
                </div>
            </div>
            <!-- Footer -->
            <jsp:include page="Footer.jsp"></jsp:include>
            <!-- Footer Section Begin -->

        </div>
    </body>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
    <script src="js/custom.js"></script>
</html>