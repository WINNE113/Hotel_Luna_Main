<%-- 
    Document   : contact
    Created on : Nov 3, 2022, 8:16:48 PM
    Author     : ASUS-PRO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Contact</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/main.css">
        <link rel="stylesheet" hre="assets/css/responsive-style.css">
        <link rel="stylesheet" href="assets/css/style.css">

    </head>

    <body>
        <div id="container">
            <!-- header -->
            <jsp:include page="Header.jsp"></jsp:include>
                <!--Header End-->
                <div id="home-background">
                    <!-- home -->
                    <div class="background">
                        <!-- home background-->
                    </div>
                    <div class="title">
                        <!-- home title-->
                        <h1 style="color: #fff">Contact</h1>
                    </div>
                </div>
                <div class="contact">
                    <div class="contact_layout">
                        <div class="form_container">
                            <div class="title_form">
                                <span>contact to me</span>
                            </div>
                            <div class="form_layout">
                                <input type="text" class="contact_name" placeholder="Name">
                                <input type="text" class="contact_email" placeholder="E-Mail">
                                <input type="text" class="contact_subject" placeholder="Subject">
                                <input type="text" class="contact_message" placeholder="Message">
                            </div>
                            <div class="btn_send_contact">
                                <a href="#">Send Message</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Footer -->
            <jsp:include page="Footer.jsp"></jsp:include>
            <!-- Footer Section Begin -->

        </div>
    </body>
     <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
    <script src="js/main.js"></script>
</html>