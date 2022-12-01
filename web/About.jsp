<%-- 
    Document   : About
    Created on : Nov 3, 2022, 8:39:23 PM
    Author     : ASUS-PRO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <jsp:include page="Header.jsp"></jsp:include>
                <!-- header -->
                <!-- background -->
                <div id="home-background">
                    <div class="background">
                    </div>
                    <div class="title">
                        <h1>About us</h1>
                    </div>
                </div>
                <!-- background -->
                <!-- into us -->
                <div class="into-layout">
                    <div class="image-us">
                        <img src="assets/img/home/ninh-van-bay-vietnam-rock_villa_bedroom25574.jpg" alt="">
                    </div>
                    <div class="content-us">
                        <div class="title-content">
                            <h1>We have the best hotel</h1>
                        </div>
                        <div class="description-content">
                            <p>We bring you the most advanced and modern resort services. With us, you will have interesting and
                                attractive experiences with three resort locations across the country. We look forward to
                                accompanying you on your travels.</p>
                        </div>
                    </div>
                </div>
                <!-- into us -->
                <div class="into-layout into-layout-2">
                    <div class="image-us image-us-2">
                        <img src="assets/img/home/ninh-van-bay-vietnam-water-pool-villa-bathroom.jpg" alt="">
                    </div>
                    <div class="content-us content-us-2">
                        <div class="title-content">
                            <h1>We have the best service</h1>
                        </div>
                        <div class="description-content">
                            <p>We bring you the most advanced and modern resort services. With us, you will have interesting and
                                attractive experiences with three resort locations across the country. We look forward to
                                accompanying you on your travels.</p>
                        </div>
                    </div>
                </div>

                <!-- Footer Section Begin -->
            <jsp:include page="Footer.jsp"></jsp:include>
            <!-- Footer Section End -->
        </div>
    </body>
     <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
    <script src="js/main.js"></script>
</html>