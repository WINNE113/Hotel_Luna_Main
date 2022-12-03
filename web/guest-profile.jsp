<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./assets/css/main.css">
    <link rel="stylesheet" hre="./assets/css/responsive-style.css">
    <link rel="stylesheet" href="./assets/css/style.css">

<body>

<div id="container">
    <!-- header -->
    <%@ include file="./assets/include/header.jsp" %>
    <!-- header -->
    <!-- background -->
    <div id="home-background">
        <div class="background">
        </div>
        <div class="title">
            <h1>About me</h1>
        </div>
    </div>
    <!-- background -->
    <div class="container rounded bg-white mt-5 mb-5">
        <div class="row">
            <div class="col-md-3 border-right">
                <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                    <img class="rounded-circle mt-5" style="width: 250px; height: 250px"
                         src="https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png"><span
                        class="font-weight-bold">${fullname}</span>
                    <span class="text-black-50">${guest.email}</span>
                    <span></span>
                </div>
            </div>
            <div class="col-md-5 border-right">
                <div class="p-3 py-5">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <h4 class="text-right">MY PROFILE</h4>
                    </div>
                    <div class="row mt-2">
                        <div class="col-md-6">
                            <label class="labels">First name</label>
                            <input type="text" class="form-control" value="${guest.firstName}" readonly>
                        </div>
                        <div class="col-md-6">
                            <label class="labels">Last name</label>
                            <input type="text" class="form-control" value="${guest.lastName}" readonly>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-md-6">
                            <label class="labels">Gender</label>
                            <input type="text" class="form-control" value="${guest.gender}" readonly>
                        </div>
                        <div class="col-md-6">
                            <label class="labels">Birthday</label>
                            <input type="text" class="form-control" value="${guest.dob}" readonly>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-12">
                            <label class="labels">Phone Number</label>
                            <input type="text" class="form-control" value="${guest.phoneNumber}" readonly>
                        </div>
                        <div class="col-md-12">
                            <label class="labels">Email</label>
                            <input type="text" class="form-control" value="${guest.email}" readonly>
                        </div>
                        <div class="col-md-12">
                            <label class="labels">Address</label>
                            <input type="text" class="form-control" value="${guest.address}" readonly>
                        </div>
                        <div class="col-md-12">
                            <label class="labels">Passport</label>
                            <input type="text" class="form-control" value="${guest.passport}" readonly>
                        </div>
                        <div class="col-md-12">
                            <label class="labels">Password</label>
                            <input type="password" class="form-control" value="${guest.password}" readonly>
                        </div>
                    </div>
                    <div class="form-check">
                        <input type="checkbox" id="exampleCheck1" name="exampleCheck1"
                        ${!guest.checkMemberShip? '': 'checked'}  disabled/>
                        <label class="form-check-label" for="exampleCheck1">is membership</label>
                    </div>

                    <div class="mt-5 text-center">
                        <button class="btn btn-primary profile-button" type="button">Update profile</button>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- Footer Section Begin -->
    <footer class="footer-section">
        <div class="container">
            <div class="footer-text">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="ft-about">
                            <div class="logo">
                                <a href="#">
                                    <img src="img/footer-logo.png" alt="">
                                </a>
                            </div>
                            <p>We inspire and reach millions of travelers<br/> across 10 local websites</p>
                            <div class="fa-social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-tripadvisor"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-youtube-play"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 offset-lg-1">
                        <div class="ft-contact">
                            <h6>Contact Us</h6>
                            <ul>
                                <li>(+84) 345678910</li>
                                <li>Bookinghotel.com.vn</li>
                                <li>54 Thanh Thai,Khue Trung,Cam Le, Da Nang, Viet Nam</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 offset-lg-1">
                        <div class="ft-newslatter">
                            <h6>New latest</h6>
                            <p>Get the latest updates and offers.</p>
                            <form action="#" class="fn-form">
                                <input type="text" placeholder="Email">
                                <button type="submit"><i class="fa fa-send"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright-option">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <ul>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Terms of use</a></li>
                            <li><a href="#">Privacy</a></li>
                            <li><a href="#">Environmental Policy</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-5">
                        <div class="h-100 d-flex align-items-center justify-content-center">
                            <div class="search-close-switch"><i class="icon_close"></i></div>
                            <form class="search-model-form">
                                <input type="text" id="search-input" placeholder="Search here.....">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->
</div>
</body>

</html>