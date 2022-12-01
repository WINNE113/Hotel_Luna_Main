<%-- 
    Document   : index
    Created on : Nov 4, 2022, 10:47:25 AM
    Author     : ASUS-PRO
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!--link boodstrap-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/main.css">
        <link rel="stylesheet" hre="assets/css/responsive-style.css">
        <title>Hotel</title>
    </head>

    <body data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="100">

        <!-- 1.header-section -->

        <jsp:include page="Header.jsp"></jsp:include>
            <!-- Hero Section Begin -->
            <section class="hero-section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="hero-text">
                                <h1>Welcom to luna hotel</h1>
                                <p>Here are the best hotel booking sites, including recommendations for international
                                    travel and for finding low-priced hotel rooms.</p>
                                <a  href="about.html" class="primary-btn">Discover Now</a>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-5 offset-xl-2 offset-lg-1">
                            <div class="booking-form">
                                <h3>Booking Your Hotel</h3>
                                <form action="#">
                                    <div class="check-date">
                                        <label for="date-in">Check In:</label>
                                        <input id="MyID" type="datetime-local" placehodel="">
                                    </div>
                                    <div class="check-date">
                                        <label for="date-out">Check Out:</label>
                                        <input id="MyID" type="datetime-local" placehodel="">
                                    </div>
                                    <div class="select-option">
                                        <label for="guest">Guests:</label>
                                        <select id="guest">
                                            <option value="">1 Adults</option>
                                            <option value="">2 Adults</option>
                                            <option value="">3 Adults</option>
                                            <option value="">5-10 Adults</option>
                                        </select>
                                    </div>
                                    <div class="select-option">
                                        <label for="room">Room:</label>
                                        <select id="room">
                                            <option value="">1 Room</option>
                                            <option value="">2 Room</option>
                                            <option value="">5 Room</option>
                                        </select>
                                    </div>
                                    <button type="submit">Check Availability</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="hero-slider owl-carousel">
                    <img src="assets/img/home/ninh-van-bay-vietnam-rock_villa_bedroom25574.jpg"  class="mx-auto d-block"  width="100%" height="100%" alt="">                  
                </div>
            </section>

            <!-- about us-->

            <section class="aboutus-section spad">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="about-text">
                                <div class="section-title">
                                    <span>About Us</span>
                                    <h2>Coastal city, Worth living <br />Luna Hotel</h2>
                                </div>
                                <p>   Luna.com is a leading online accommodation website. We are passionate about travel. 
                                    Every day, we inspire and reach millions of travelers across 10 local websites in 1 language. 
                                    So when it comes to booking the perfect hotel, vacation rental, guesthouse, we've got you covered.
                                </p>        
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="about-pic">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <img src="assets/img/home/about1.webp"  
                                             width="100%" height="120%"   alt="">
                                    </div>
                                    <div class="col-sm-6">
                                        <img src="assets/img/home/about2.png" 
                                             width="100%" height="120%"  alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>


            <!-- Home Room Section Begin -->

            <section class="hp-room-section">
                <div class="container-fluid">
                    <div class="hp-room-items">
                        <div class="row">
                        <c:forEach items="${listRoom}" var="item">
                            <div class="col-lg-3 col-md-6">
                                <div class="hp-room-item set-bg">
                                    <img src="assets/img/home/ninh-van-bay-vietnam-rock_villa_bedroom25574.jpg" width="100%" height="70%" alt="">
                                    <div class="hr-text">
                                        <h3>${item.roomTypeName}</h3>
                                        <h2>${item.roomPrice}<span>/Pernight</span></h2>
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <td class="r-o">City</td>
                                                    <td>${item.cityName}</td>
                                                </tr>
                                                <tr>
                                                    <td class="r-o">Address</td>
                                                    <td>${item.hotelAddress}</td>
                                                </tr>
                                                <tr>
                                                    <td class="r-o">Room Rate</td>
                                                    <td>${item.roomRateDesc}</td>
                                                </tr>
                                                <tr>
                                                    <td class="r-o">Services:</td>
                                                    <td>Wifi, Television, Bathroom,...</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <a href="#" class="primary-btn">More Details</a>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </section>
        <!--Services-->

        <section class="services-section spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title">
                            <span>What We Do</span>
                            <h2>Discover Our Services</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-sm-6">
                        <div class="service-item">
                            <i class="flaticon-036-parking"></i>
                            <h4>Travel Plan</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                                labore et dolore magna.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <div class="service-item">
                            <i class="flaticon-033-dinner"></i>
                            <h4>Catering Service</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                                labore et dolore magna.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <div class="service-item">
                            <i class="flaticon-026-bed"></i>
                            <h4>Babysitting</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                                labore et dolore magna.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <div class="service-item">
                            <i class="flaticon-024-towel"></i>
                            <h4>Laundry</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                                labore et dolore magna.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <div class="service-item">
                            <i class="flaticon-044-clock-1"></i>
                            <h4>Hire Driver</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                                labore et dolore magna.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <div class="service-item">
                            <i class="flaticon-012-cocktail"></i>
                            <h4>Bar & Drink</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                                labore et dolore magna.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Blog Section Begin -->
        <section class="blog-section spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title">
                            <span>Hotel News</span>
                            <h2>Our Blog & Event</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="blog-item set-bg">
                            <img src="assets/img/home/ninh-van-bay-vietnam-black-shanked-douc-langur.jpg" width="100%" height="100%" alt="">
                            <div class="bi-text">
                                <span class="b-tag">Travel Trip</span>
                                <h4><a href="#">Son Tra Island</a></h4>
                                <div class="b-time"><i class="icon_clock_alt"></i> 15th May, 2022</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="blog-item set-bg">
                            <img src="assets/img/home/ninh-van-bay-vietnam-rock_villa_bedroom25574.jpg" width="100%" height="100%" alt="">
                            <div class="bi-text">
                                <span class="b-tag">Camping</span>
                                <h4><a href="#">My Khe beach</a></h4>
                                <div class="b-time"><i class="icon_clock_alt"></i> 15th May, 2022</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="blog-item set-bg">
                            <img src="assets/img/home/ninh-van-bay-vietnam-water-pool-villa-bathroom.jpg" width="100%" height="100%" alt="">
                            <div class="bi-text">
                                <span class="b-tag">Event</span>
                                <h4><a href="#">Than Tai Mountain</a></h4>
                                <div class="b-time"><i class="icon_clock_alt"></i> 21th May, 2022</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="blog-item small-size set-bg">
                            <img src="assets/img/home/ninh_van_bay_vietnam_rock_pool_villa_aerial2.jpg" width="100%" height="100%" alt="">
                            <div class="bi-text">
                                <span class="b-tag">Event</span>
                                <h4><a href="#">Hoi An Ancient Town Trip</a></h4>
                                <div class="b-time"><i class="icon_clock_alt"></i> 08th May, 2022</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="blog-item small-size set-bg">
                            <img src="assets/img/home/ninh_van_bay_vietnam_rock_pool_villa_aerial2.jpg" width="100%" height="100%" alt="">
                            <div class="bi-text">
                                <span class="b-tag">Travel</span>
                                <h4><a href="#">Traveling To BâN Hills</a></h4>
                                <div class="b-time"><i class="icon_clock_alt"></i> 12th May, 2022</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Blog Section End -->


        <!-- Footer Section Begin -->
        <jsp:include page="Footer.jsp"></jsp:include>
        <!-- Footer Section End -->



        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>      
    </body>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/custom.js"></script>

</html>
